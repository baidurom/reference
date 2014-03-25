.class public Landroid/telephony/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CCC_LENGTH:I = 0x0

.field private static final CLIR_OFF:Ljava/lang/String; = "#31#"

.field private static final CLIR_ON:Ljava/lang/String; = "*31#"

.field private static final COUNTRY_CALLING_CALL:[Z = null

.field private static final DBG:Z = false

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field private static final GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final KEYPAD_MAP:Landroid/util/SparseIntArray; = null

.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field static final MIN_MATCH:I = 0x7

.field private static final NANP_COUNTRIES:[Ljava/lang/String; = null

.field private static final NANP_IDP_STRING:Ljava/lang/String; = "011"

.field private static final NANP_LENGTH:I = 0xa

.field private static final NANP_STATE_DASH:I = 0x4

.field private static final NANP_STATE_DIGIT:I = 0x1

.field private static final NANP_STATE_ONE:I = 0x3

.field private static final NANP_STATE_PLUS:I = 0x2

.field public static final PAUSE:C = ','

.field private static final PLUS_SIGN_CHAR:C = '+'

.field private static final PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field public static final TOA_International:I = 0x91

.field public static final TOA_Unknown:I = 0x81

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x34

    const/16 v6, 0x33

    const/16 v5, 0x32

    const/16 v4, 0x39

    const/16 v3, 0x37

    .line 85
    const-string v0, "[\\+]?[0-9.-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 1135
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "US"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AI"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "BS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BB"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BM"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "VG"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "KY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GD"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GU"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "JM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "MP"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "KN"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "LC"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "VC"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TT"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TC"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "VI"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    .line 1905
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    .line 1907
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x62

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1908
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x41

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1910
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1911
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1913
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1914
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x47

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x48

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x49

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1916
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1917
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1919
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1920
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1922
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x72

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x73

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1923
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x51

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x52

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x53

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1925
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x74

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x75

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x76

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1926
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x54

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x55

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x56

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1928
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x79

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1929
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x57

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x58

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x59

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2384
    const/16 v0, 0x64

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    .line 2396
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    array-length v0, v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    return-void

    .line 2384
    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2419
    return-void
.end method

.method private static appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "dialableIndex"
    .parameter "origStr"
    .parameter "dialStr"

    .prologue
    const/4 v4, 0x0

    .line 2244
    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    .line 2245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2246
    .local v1, ret:Ljava/lang/StringBuilder;
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2247
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2254
    .end local v1           #ret:Ljava/lang/StringBuilder;
    .local v2, retStr:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 2251
    .end local v2           #retStr:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2252
    .local v0, nonDigitStr:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #retStr:Ljava/lang/String;
    goto :goto_0
.end method

.method private static bcdToChar(B)C
    .locals 1
    .parameter "b"

    .prologue
    .line 971
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 972
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 979
    :goto_0
    return v0

    .line 973
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 979
    const/4 v0, 0x0

    goto :goto_0

    .line 974
    :pswitch_0
    const/16 v0, 0x2a

    goto :goto_0

    .line 975
    :pswitch_1
    const/16 v0, 0x23

    goto :goto_0

    .line 976
    :pswitch_2
    const/16 v0, 0x2c

    goto :goto_0

    .line 977
    :pswitch_3
    const/16 v0, 0x4e

    goto :goto_0

    .line 973
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static calledPartyBCDFragmentToString([BII)Ljava/lang/String;
    .locals 2
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 961
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 963
    .local v0, ret:Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 965
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static calledPartyBCDToString([BII)Ljava/lang/String;
    .locals 12
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 818
    const/4 v2, 0x0

    .line 819
    .local v2, prependPlus:Z
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, p2, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 821
    .local v3, ret:Ljava/lang/StringBuilder;
    if-ge p2, v7, :cond_0

    .line 822
    const-string v5, ""

    .line 913
    :goto_0
    return-object v5

    .line 826
    :cond_0
    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0x90

    if-ne v5, v6, :cond_1

    .line 827
    const/4 v2, 0x1

    .line 830
    :cond_1
    add-int/lit8 v5, p1, 0x1

    add-int/lit8 v6, p2, -0x1

    invoke-static {v3, p0, v5, v6}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 833
    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 835
    const-string v5, ""

    goto :goto_0

    .line 838
    :cond_2
    if-eqz v2, :cond_3

    .line 864
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 865
    .local v4, retString:Ljava/lang/String;
    const-string v5, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 866
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 867
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 868
    const-string v5, ""

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 872
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 873
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    .end local v0           #m:Ljava/util/regex/Matcher;
    .end local v1           #p:Ljava/util/regex/Pattern;
    .end local v4           #retString:Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 882
    .restart local v0       #m:Ljava/util/regex/Matcher;
    .restart local v1       #p:Ljava/util/regex/Pattern;
    .restart local v4       #retString:Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 883
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 891
    :cond_5
    const-string v5, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 892
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 893
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 898
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 899
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 906
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 907
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    const/16 v5, 0x2b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 908
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "dialStr"

    .prologue
    .line 1967
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1968
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1970
    const-string v2, "gsm.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1971
    .local v0, currIso:Ljava/lang/String;
    const-string v2, "gsm.sim.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1972
    .local v1, defaultIso:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1973
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 1979
    .end local v0           #currIso:Ljava/lang/String;
    .end local v1           #defaultIso:Ljava/lang/String;
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8
    .parameter "dialStr"
    .parameter "currFormat"
    .parameter "defaultFormat"

    .prologue
    const/4 v7, 0x1

    .line 2011
    move-object v3, p0

    .line 2014
    .local v3, retStr:Ljava/lang/String;
    if-eqz p0, :cond_2

    const-string v5, "+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2018
    if-ne p1, p2, :cond_7

    if-ne p1, v7, :cond_7

    .line 2020
    const/4 v2, 0x0

    .line 2021
    .local v2, postDialStr:Ljava/lang/String;
    move-object v4, p0

    .line 2024
    .local v4, tempDialStr:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2031
    :cond_0
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2033
    .local v1, networkDialStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->processPlusCodeWithinNanp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2036
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2037
    if-nez v3, :cond_3

    .line 2038
    move-object v3, v1

    .line 2049
    :goto_0
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2050
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2051
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v0

    .line 2054
    .local v0, dialableIndex:I
    if-lt v0, v7, :cond_5

    .line 2055
    invoke-static {v0, v3, v2}, Landroid/telephony/PhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2058
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2070
    .end local v0           #dialableIndex:I
    :cond_1
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .end local v1           #networkDialStr:Ljava/lang/String;
    .end local v2           #postDialStr:Ljava/lang/String;
    .end local v4           #tempDialStr:Ljava/lang/String;
    :cond_2
    :goto_2
    move-object p0, v3

    .line 2078
    .end local p0
    :goto_3
    return-object p0

    .line 2040
    .restart local v1       #networkDialStr:Ljava/lang/String;
    .restart local v2       #postDialStr:Ljava/lang/String;
    .restart local v4       #tempDialStr:Ljava/lang/String;
    .restart local p0
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2046
    :cond_4
    const-string v5, "checkAndProcessPlusCode: null newDialStr"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2063
    .restart local v0       #dialableIndex:I
    :cond_5
    if-gez v0, :cond_6

    .line 2064
    const-string v2, ""

    .line 2066
    :cond_6
    const-string/jumbo v5, "wrong postDialStr="

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2075
    .end local v0           #dialableIndex:I
    .end local v1           #networkDialStr:Ljava/lang/String;
    .end local v2           #postDialStr:Ljava/lang/String;
    .end local v4           #tempDialStr:Ljava/lang/String;
    :cond_7
    const-string v5, "checkAndProcessPlusCode:non-NANP not supported"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static charToBCD(C)I
    .locals 3
    .parameter "c"

    .prologue
    .line 985
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 986
    add-int/lit8 v0, p0, -0x30

    .line 994
    :goto_0
    return v0

    .line 987
    :cond_0
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_1

    .line 988
    const/16 v0, 0xa

    goto :goto_0

    .line 989
    :cond_1
    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    .line 990
    const/16 v0, 0xb

    goto :goto_0

    .line 991
    :cond_2
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_3

    .line 992
    const/16 v0, 0xc

    goto :goto_0

    .line 993
    :cond_3
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_4

    .line 994
    const/16 v0, 0xd

    goto :goto_0

    .line 996
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid char for BCD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkPrefixIsIgnorable(Ljava/lang/String;II)Z
    .locals 3
    .parameter "str"
    .parameter "forwardIndex"
    .parameter "backwardIndex"

    .prologue
    const/4 v1, 0x0

    .line 2547
    const/4 v0, 0x0

    .line 2548
    .local v0, trunk_prefix_was_read:Z
    :goto_0
    if-lt p2, p1, :cond_3

    .line 2549
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v2

    if-ltz v2, :cond_2

    .line 2550
    if-eqz v0, :cond_0

    .line 2565
    :goto_1
    return v1

    .line 2556
    :cond_0
    const/4 v0, 0x1

    .line 2562
    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 2558
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 2565
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 441
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #bool@config_use_strict_phone_number_comparation#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 443
    .local v0, useStrict:Z
    invoke-static {p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 432
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "useStrictComparation"

    .prologue
    .line 450
    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "a"
    .parameter "b"

    .prologue
    .line 471
    const/4 v7, 0x0

    .line 472
    .local v7, numNonDialableCharsInA:I
    const/4 v8, 0x0

    .line 474
    .local v8, numNonDialableCharsInB:I
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v10, 0x1

    .line 558
    :goto_0
    return v10

    .line 474
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 476
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4

    .line 477
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 480
    :cond_4
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 481
    .local v4, ia:I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v5

    .line 482
    .local v5, ib:I
    const/4 v6, 0x0

    .line 484
    .local v6, matched:I
    :cond_5
    :goto_1
    if-ltz v4, :cond_8

    if-ltz v5, :cond_8

    .line 486
    const/4 v9, 0x0

    .line 488
    .local v9, skipCmp:Z
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 490
    .local v0, ca:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v10

    if-nez v10, :cond_6

    .line 491
    add-int/lit8 v4, v4, -0x1

    .line 492
    const/4 v9, 0x1

    .line 493
    add-int/lit8 v7, v7, 0x1

    .line 496
    :cond_6
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 498
    .local v1, cb:C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v10

    if-nez v10, :cond_7

    .line 499
    add-int/lit8 v5, v5, -0x1

    .line 500
    const/4 v9, 0x1

    .line 501
    add-int/lit8 v8, v8, 0x1

    .line 504
    :cond_7
    if-nez v9, :cond_5

    .line 505
    if-eq v1, v0, :cond_9

    const/16 v10, 0x4e

    if-eq v0, v10, :cond_9

    const/16 v10, 0x4e

    if-eq v1, v10, :cond_9

    .line 512
    .end local v0           #ca:C
    .end local v1           #cb:C
    .end local v9           #skipCmp:Z
    :cond_8
    const/4 v10, 0x7

    if-ge v6, v10, :cond_b

    .line 513
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v2, v10, v7

    .line 514
    .local v2, effectiveALen:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v3, v10, v8

    .line 519
    .local v3, effectiveBLen:I
    if-ne v2, v3, :cond_a

    if-ne v2, v6, :cond_a

    .line 520
    const/4 v10, 0x1

    goto :goto_0

    .line 508
    .end local v2           #effectiveALen:I
    .end local v3           #effectiveBLen:I
    .restart local v0       #ca:C
    .restart local v1       #cb:C
    .restart local v9       #skipCmp:Z
    :cond_9
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 523
    .end local v0           #ca:C
    .end local v1           #cb:C
    .end local v9           #skipCmp:Z
    .restart local v2       #effectiveALen:I
    .restart local v3       #effectiveBLen:I
    :cond_a
    const/4 v10, 0x0

    goto :goto_0

    .line 527
    .end local v2           #effectiveALen:I
    .end local v3           #effectiveBLen:I
    :cond_b
    const/4 v10, 0x7

    if-lt v6, v10, :cond_d

    if-ltz v4, :cond_c

    if-gez v5, :cond_d

    .line 528
    :cond_c
    const/4 v10, 0x1

    goto :goto_0

    .line 540
    :cond_d
    add-int/lit8 v10, v4, 0x1

    invoke-static {p0, v10}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_e

    add-int/lit8 v10, v5, 0x1

    invoke-static {p1, v10}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 543
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 546
    :cond_e
    add-int/lit8 v10, v4, 0x1

    invoke-static {p0, v10}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_f

    add-int/lit8 v10, v5, 0x1

    invoke-static {p1, v10}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 549
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 552
    :cond_f
    add-int/lit8 v10, v5, 0x1

    invoke-static {p1, v10}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_10

    add-int/lit8 v10, v4, 0x1

    invoke-static {p0, v10}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 555
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 558
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 566
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 20
    .parameter "a"
    .parameter "b"
    .parameter "acceptInvalidCCCPrefix"

    .prologue
    .line 574
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 575
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1

    const/16 v18, 0x1

    .line 712
    :goto_0
    return v18

    .line 575
    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    .line 576
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_3

    .line 577
    const/16 v18, 0x0

    goto :goto_0

    .line 580
    :cond_3
    const/4 v10, 0x0

    .line 581
    .local v10, forwardIndexA:I
    const/4 v11, 0x0

    .line 583
    .local v11, forwardIndexB:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v6

    .line 585
    .local v6, cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    invoke-static/range {p1 .. p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v7

    .line 587
    .local v7, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    const/4 v5, 0x0

    .line 588
    .local v5, bothHasCountryCallingCode:Z
    const/4 v13, 0x1

    .line 589
    .local v13, okToIgnorePrefix:Z
    const/16 v16, 0x0

    .line 590
    .local v16, trunkPrefixIsOmittedA:Z
    const/16 v17, 0x0

    .line 591
    .local v17, trunkPrefixIsOmittedB:Z
    if-eqz v6, :cond_9

    if-eqz v7, :cond_9

    .line 592
    iget v0, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v18, v0

    iget v0, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 594
    const/16 v18, 0x0

    goto :goto_0

    .line 598
    :cond_4
    const/4 v13, 0x0

    .line 599
    const/4 v5, 0x1

    .line 600
    iget v10, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 601
    iget v11, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 627
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v3, v18, -0x1

    .line 628
    .local v3, backwardIndexA:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v4, v18, -0x1

    .line 629
    .local v4, backwardIndexB:I
    :cond_6
    :goto_2
    if-lt v3, v10, :cond_f

    if-lt v4, v11, :cond_f

    .line 630
    const/4 v14, 0x0

    .line 631
    .local v14, skip_compare:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 632
    .local v8, chA:C
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 633
    .local v9, chB:C
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 634
    add-int/lit8 v3, v3, -0x1

    .line 635
    const/4 v14, 0x1

    .line 637
    :cond_7
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 638
    add-int/lit8 v4, v4, -0x1

    .line 639
    const/4 v14, 0x1

    .line 642
    :cond_8
    if-nez v14, :cond_6

    .line 643
    if-eq v8, v9, :cond_e

    .line 644
    const/16 v18, 0x0

    goto :goto_0

    .line 602
    .end local v3           #backwardIndexA:I
    .end local v4           #backwardIndexB:I
    .end local v8           #chA:C
    .end local v9           #chB:C
    .end local v14           #skip_compare:Z
    :cond_9
    if-nez v6, :cond_a

    if-nez v7, :cond_a

    .line 605
    const/4 v13, 0x0

    goto :goto_1

    .line 607
    :cond_a
    if-eqz v6, :cond_c

    .line 608
    iget v10, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 616
    :cond_b
    :goto_3
    if-eqz v7, :cond_d

    .line 617
    iget v11, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_1

    .line 610
    :cond_c
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    .line 611
    .local v15, tmp:I
    if-ltz v15, :cond_b

    .line 612
    move v10, v15

    .line 613
    const/16 v16, 0x1

    goto :goto_3

    .line 619
    .end local v15           #tmp:I
    :cond_d
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    .line 620
    .restart local v15       #tmp:I
    if-ltz v15, :cond_5

    .line 621
    move v11, v15

    .line 622
    const/16 v17, 0x1

    goto :goto_1

    .line 646
    .end local v15           #tmp:I
    .restart local v3       #backwardIndexA:I
    .restart local v4       #backwardIndexB:I
    .restart local v8       #chA:C
    .restart local v9       #chB:C
    .restart local v14       #skip_compare:Z
    :cond_e
    add-int/lit8 v3, v3, -0x1

    .line 647
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 651
    .end local v8           #chA:C
    .end local v9           #chB:C
    .end local v14           #skip_compare:Z
    :cond_f
    if-eqz v13, :cond_17

    .line 652
    if-eqz v16, :cond_10

    if-le v10, v3, :cond_11

    :cond_10
    move-object/from16 v0, p0

    invoke-static {v0, v10, v3}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_13

    .line 654
    :cond_11
    if-eqz p2, :cond_12

    .line 664
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_0

    .line 666
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 669
    :cond_13
    if-eqz v17, :cond_14

    if-le v11, v4, :cond_15

    :cond_14
    move-object/from16 v0, p1

    invoke-static {v0, v10, v4}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_1e

    .line 671
    :cond_15
    if-eqz p2, :cond_16

    .line 672
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_0

    .line 674
    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 687
    :cond_17
    if-nez v5, :cond_19

    const/4 v12, 0x1

    .line 688
    .local v12, maybeNamp:Z
    :goto_4
    if-lt v3, v10, :cond_1b

    .line 689
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 690
    .restart local v8       #chA:C
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 691
    if-eqz v12, :cond_1a

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    .line 692
    const/4 v12, 0x0

    .line 697
    :cond_18
    add-int/lit8 v3, v3, -0x1

    .line 698
    goto :goto_4

    .line 687
    .end local v8           #chA:C
    .end local v12           #maybeNamp:Z
    :cond_19
    const/4 v12, 0x0

    goto :goto_4

    .line 694
    .restart local v8       #chA:C
    .restart local v12       #maybeNamp:Z
    :cond_1a
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 699
    .end local v8           #chA:C
    :cond_1b
    :goto_5
    if-lt v4, v11, :cond_1e

    .line 700
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 701
    .restart local v9       #chB:C
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_1c

    .line 702
    if-eqz v12, :cond_1d

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d

    .line 703
    const/4 v12, 0x0

    .line 708
    :cond_1c
    add-int/lit8 v4, v4, -0x1

    .line 709
    goto :goto_5

    .line 705
    :cond_1d
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 712
    .end local v9           #chB:C
    .end local v12           #maybeNamp:Z
    :cond_1e
    const/16 v18, 0x1

    goto/16 :goto_0
.end method

.method public static convertAndStrip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "phoneNumber"

    .prologue
    .line 328
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "input"

    .prologue
    .line 1882
    if-nez p0, :cond_1

    .line 1898
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 1885
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1886
    .local v2, len:I
    if-eqz v2, :cond_0

    .line 1890
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1892
    .local v3, out:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1893
    aget-char v0, v3, v1

    .line 1895
    .local v0, c:C
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v3, v1

    .line 1892
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1898
    .end local v0           #c:C
    :cond_2
    new-instance p0, Ljava/lang/String;

    .end local p0
    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static convertPreDial(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "phoneNumber"

    .prologue
    .line 338
    if-nez p0, :cond_0

    .line 339
    const/4 v4, 0x0

    .line 354
    :goto_0
    return-object v4

    .line 341
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 342
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 344
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 345
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 347
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isPause(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 348
    const/16 v0, 0x2c

    .line 352
    :cond_1
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 349
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isToneWait(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 350
    const/16 v0, 0x3b

    goto :goto_2

    .line 354
    .end local v0           #c:C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "phoneNumber"

    .prologue
    .line 226
    if-nez p0, :cond_0

    .line 227
    const/4 v6, 0x0

    .line 252
    :goto_0
    return-object v6

    .line 230
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 231
    .local v3, len:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 233
    .local v5, ret:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 234
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 236
    .local v0, c:C
    const/16 v6, 0xa

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 237
    .local v1, digit:I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 238
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 239
    :cond_2
    const/16 v6, 0x2b

    if-ne v0, v6, :cond_4

    .line 241
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, prefix:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "*31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "#31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 243
    :cond_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 245
    .end local v4           #prefix:Ljava/lang/String;
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 246
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 247
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 252
    .end local v0           #c:C
    .end local v1           #digit:I
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 265
    if-nez p0, :cond_0

    .line 266
    const/4 v5, 0x0

    .line 288
    :goto_0
    return-object v5

    .line 269
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 270
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 271
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 273
    .local v1, haveSeenPlus:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 274
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 275
    .local v0, c:C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_3

    .line 276
    if-eqz v1, :cond_2

    .line 273
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 279
    :cond_2
    const/4 v1, 0x1

    .line 281
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 282
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 283
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 288
    .end local v0           #c:C
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 407
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 423
    :goto_0
    return-object v5

    .line 410
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    .local v2, ret:Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 414
    .local v4, trimIndex:I
    add-int/lit8 v1, v4, 0x1

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 415
    .local v3, s:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 417
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 418
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 419
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 415
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 423
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static findDialableIndexFromPostDialStr(Ljava/lang/String;)I
    .locals 3
    .parameter "postDialStr"

    .prologue
    .line 2228
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2229
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2230
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2234
    .end local v0           #c:C
    .end local v1           #index:I
    :goto_1
    return v1

    .line 2228
    .restart local v0       #c:C
    .restart local v1       #index:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2234
    .end local v0           #c:C
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static formatJapaneseNumber(Landroid/text/Editable;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 1374
    invoke-static {p0}, Landroid/telephony/JapanesePhoneNumberFormatter;->format(Landroid/text/Editable;)V

    .line 1375
    return-void
.end method

.method public static formatNanpNumber(Landroid/text/Editable;)V
    .locals 15
    .parameter "text"

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x3

    const/4 v12, 0x0

    .line 1261
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1262
    .local v4, length:I
    const-string v11, "+1-nnn-nnn-nnnn"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-le v4, v11, :cond_1

    .line 1356
    :cond_0
    :goto_0
    return-void

    .line 1265
    :cond_1
    const/4 v11, 0x5

    if-le v4, v11, :cond_0

    .line 1270
    invoke-interface {p0, v12, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1273
    .local v9, saved:Ljava/lang/CharSequence;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    .line 1274
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1279
    new-array v1, v13, [I

    .line 1280
    .local v1, dashPositions:[I
    const/4 v5, 0x0

    .line 1282
    .local v5, numDashes:I
    const/4 v10, 0x1

    .line 1283
    .local v10, state:I
    const/4 v7, 0x0

    .line 1284
    .local v7, numDigits:I
    const/4 v2, 0x0

    .local v2, i:I
    move v6, v5

    .end local v5           #numDashes:I
    .local v6, numDashes:I
    :goto_1
    if-ge v2, v4, :cond_8

    .line 1285
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 1286
    .local v0, c:C
    packed-switch v0, :pswitch_data_0

    .line 1330
    :cond_2
    :pswitch_0
    invoke-interface {p0, v12, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 1288
    :pswitch_1
    if-eqz v7, :cond_3

    if-ne v10, v14, :cond_4

    .line 1289
    :cond_3
    const/4 v10, 0x3

    move v5, v6

    .line 1284
    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    goto :goto_1

    .line 1302
    :cond_4
    :pswitch_2
    if-ne v10, v14, :cond_5

    .line 1304
    invoke-interface {p0, v12, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 1306
    :cond_5
    if-ne v10, v13, :cond_6

    .line 1308
    add-int/lit8 v5, v6, 0x1

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    aput v2, v1, v6

    .line 1313
    :goto_3
    const/4 v10, 0x1

    .line 1314
    add-int/lit8 v7, v7, 0x1

    .line 1315
    goto :goto_2

    .line 1309
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :cond_6
    const/4 v11, 0x4

    if-eq v10, v11, :cond_b

    if-eq v7, v13, :cond_7

    const/4 v11, 0x6

    if-ne v7, v11, :cond_b

    .line 1311
    :cond_7
    add-int/lit8 v5, v6, 0x1

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    aput v2, v1, v6

    goto :goto_3

    .line 1318
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :pswitch_3
    const/4 v10, 0x4

    move v5, v6

    .line 1319
    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_2

    .line 1322
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :pswitch_4
    if-nez v2, :cond_2

    .line 1324
    const/4 v10, 0x2

    move v5, v6

    .line 1325
    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_2

    .line 1335
    .end local v0           #c:C
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :cond_8
    const/4 v11, 0x7

    if-ne v7, v11, :cond_a

    .line 1337
    add-int/lit8 v5, v6, -0x1

    .line 1341
    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    :goto_4
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v5, :cond_9

    .line 1342
    aget v8, v1, v2

    .line 1343
    .local v8, pos:I
    add-int v11, v8, v2

    add-int v12, v8, v2

    const-string v13, "-"

    invoke-interface {p0, v11, v12, v13}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1341
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1347
    .end local v8           #pos:I
    :cond_9
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1348
    .local v3, len:I
    :goto_6
    if-lez v3, :cond_0

    .line 1349
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_0

    .line 1350
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1351
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .end local v3           #len:I
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :cond_a
    move v5, v6

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_4

    .end local v5           #numDashes:I
    .restart local v0       #c:C
    .restart local v6       #numDashes:I
    :cond_b
    move v5, v6

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_3

    .line 1286
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "source"

    .prologue
    .line 1171
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1172
    .local v0, text:Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1173
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "source"
    .parameter "defaultFormattingType"

    .prologue
    .line 1188
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1189
    .local v0, text:Landroid/text/SpannableStringBuilder;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1190
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "phoneNumber"
    .parameter "defaultCountryIso"

    .prologue
    .line 1441
    const-string v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "*"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v1, p0

    .line 1452
    :goto_0
    return-object v1

    .line 1445
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 1446
    .local v2, util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v1, 0x0

    .line 1448
    .local v1, result:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 1449
    .local v0, pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1450
    .end local v0           #pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "phoneNumber"
    .parameter "phoneNumberE164"
    .parameter "defaultCountryIso"

    .prologue
    .line 1477
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1478
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1479
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1501
    .end local p0
    :goto_1
    return-object p0

    .line 1478
    .restart local p0
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1483
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    .line 1485
    .local v5, util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_2

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_2

    .line 1490
    :try_start_0
    const-string v6, "ZZ"

    invoke-virtual {v5, p1, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 1491
    .local v2, pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v5, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 1492
    .local v3, regionCode:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-gtz v6, :cond_2

    .line 1495
    move-object p2, v3

    .line 1500
    .end local v2           #pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v3           #regionCode:Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-static {p0, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1501
    .local v4, result:Ljava/lang/String;
    if-eqz v4, :cond_3

    .end local v4           #result:Ljava/lang/String;
    :goto_3
    move-object p0, v4

    goto :goto_1

    .restart local v4       #result:Ljava/lang/String;
    :cond_3
    move-object v4, p0

    goto :goto_3

    .line 1497
    .end local v4           #result:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .locals 6
    .parameter "text"
    .parameter "defaultFormattingType"

    .prologue
    const/16 v5, 0x31

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1215
    move v0, p1

    .line 1217
    .local v0, formatType:I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    .line 1218
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1

    .line 1219
    const/4 v0, 0x1

    .line 1228
    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1239
    :goto_1
    return-void

    .line 1220
    :cond_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_2

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_2

    .line 1222
    const/4 v0, 0x2

    goto :goto_0

    .line 1224
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1230
    :pswitch_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    goto :goto_1

    .line 1233
    :pswitch_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    goto :goto_1

    .line 1236
    :pswitch_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    goto :goto_1

    .line 1228
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "phoneNumber"
    .parameter "defaultCountryIso"

    .prologue
    .line 1412
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 1413
    .local v2, util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v1, 0x0

    .line 1415
    .local v1, result:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 1416
    .local v0, pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1417
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v2, v0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1421
    .end local v0           #pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_0
    :goto_0
    return-object v1

    .line 1419
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static getDefaultIdp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2083
    const/4 v0, 0x0

    .line 2084
    .local v0, ps:Ljava/lang/String;
    const-string/jumbo v1, "ro.cdma.idpstring"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2085
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2086
    const-string v0, "011"

    .line 2088
    :cond_0
    return-object v0
.end method

.method public static getFormatTypeForLocale(Ljava/util/Locale;)I
    .locals 2
    .parameter "locale"

    .prologue
    .line 1201
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1203
    .local v0, country:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .locals 3
    .parameter "country"

    .prologue
    .line 2101
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v1, v2

    .line 2102
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2103
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 2104
    const/4 v2, 0x1

    .line 2110
    :goto_1
    return v2

    .line 2102
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2107
    :cond_1
    const-string v2, "jp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 2108
    const/4 v2, 0x2

    goto :goto_1

    .line 2110
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 152
    const/4 v9, 0x0

    .line 154
    .local v9, number:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 156
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-object v3

    .line 157
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 158
    .local v11, scheme:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 161
    const-string/jumbo v0, "sip"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 165
    :cond_2
    const-string/jumbo v0, "tel"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v12

    .line 168
    .local v12, schemepart:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v8

    .line 169
    .local v8, fragmentpart:Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 170
    if-eqz v8, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v12

    .line 171
    goto :goto_0

    .line 179
    .end local v8           #fragmentpart:Ljava/lang/String;
    .end local v12           #schemepart:Ljava/lang/String;
    :cond_4
    const-string/jumbo v0, "voicemail"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 180
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 183
    :cond_5
    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 188
    .local v13, type:Ljava/lang/String;
    const/4 v10, 0x0

    .line 191
    .local v10, phoneColumn:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 192
    .local v6, authority:Ljava/lang/String;
    const-string v0, "contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 193
    const-string/jumbo v10, "number"

    .line 198
    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v10, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 201
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_8

    .line 203
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 204
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 207
    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v3, v9

    .line 211
    goto/16 :goto_0

    .line 194
    .end local v7           #c:Landroid/database/Cursor;
    :cond_9
    const-string v0, "com.android.contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 195
    const-string v10, "data1"

    goto :goto_1

    .line 207
    .restart local v7       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "phoneNumber"

    .prologue
    .line 739
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, np:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 743
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "number"

    .prologue
    .line 2184
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2185
    .local v0, delimiterIndex:I
    if-gez v0, :cond_0

    .line 2186
    const-string v1, "%40"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2188
    :cond_0
    if-gez v0, :cond_1

    .line 2189
    const-string v1, "PhoneNumberUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsernameFromUriNumber: no delimiter found in SIP addr \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2193
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .locals 5
    .parameter "a"

    .prologue
    .line 383
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 385
    .local v0, origLength:I
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 386
    .local v1, pIndex:I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 388
    .local v3, wIndex:I
    invoke-static {v1, v3}, Landroid/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v2

    .line 390
    .local v2, trimIndex:I
    if-gez v2, :cond_0

    .line 391
    add-int/lit8 v4, v0, -0x1

    .line 393
    :goto_0
    return v4

    :cond_0
    add-int/lit8 v4, v2, -0x1

    goto :goto_0
.end method

.method private static internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V
    .locals 5
    .parameter "sb"
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 919
    move v2, p2

    .local v2, i:I
    :goto_0
    add-int v3, p3, p2

    if-ge v2, v3, :cond_0

    .line 923
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 925
    .local v1, c:C
    if-nez v1, :cond_1

    .line 952
    .end local v1           #c:C
    :cond_0
    return-void

    .line 928
    .restart local v1       #c:C
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 937
    aget-byte v3, p1, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v0, v3

    .line 939
    .local v0, b:B
    const/16 v3, 0xf

    if-ne v0, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p3, p2

    if-eq v3, v4, :cond_0

    .line 944
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 945
    if-eqz v1, :cond_0

    .line 949
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 919
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "np"
    .parameter "numDigits"

    .prologue
    .line 752
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 765
    :goto_0
    return-object v5

    .line 754
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 755
    .local v3, ret:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 757
    .local v2, length:I
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    move v4, v2

    .line 758
    .local v4, s:I
    :goto_1
    if-ltz v1, :cond_1

    sub-int v5, v4, v1

    if-gt v5, p1, :cond_1

    .line 760
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 762
    .local v0, c:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 758
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 765
    .end local v0           #c:C
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static final is12Key(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 97
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCountryCallingCode(I)Z
    .locals 1
    .parameter "countryCallingCodeCandidate"

    .prologue
    .line 2402
    if-lez p0, :cond_0

    sget v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isDialable(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 103
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDialable(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 1024
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1025
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1026
    const/4 v2, 0x0

    .line 1029
    :goto_1
    return v2

    .line 1024
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1029
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 1584
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "number"
    .parameter "defaultCountryIso"

    .prologue
    .line 1647
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10
    .parameter "number"
    .parameter "defaultCountryIso"
    .parameter "useExactMatch"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1697
    if-nez p0, :cond_1

    .line 1757
    :cond_0
    :goto_0
    return v6

    .line 1706
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1712
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1716
    const-string/jumbo v8, "ril.ecclist"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1717
    .local v4, numbers:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1719
    const-string/jumbo v8, "ro.ril.ecclist"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1722
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1725
    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1728
    .local v1, emergencyNum:Ljava/lang/String;
    if-nez p2, :cond_3

    const-string v8, "BR"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1729
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v6, v7

    .line 1730
    goto :goto_0

    .line 1733
    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v6, v7

    .line 1734
    goto :goto_0

    .line 1725
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1742
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #emergencyNum:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_6
    const-string v8, "PhoneNumberUtils"

    const-string v9, "System property doesn\'t provide any emergency numbers. Use embedded logic for determining ones."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    if-eqz p1, :cond_8

    .line 1747
    new-instance v5, Lcom/android/i18n/phonenumbers/ShortNumberUtil;

    invoke-direct {v5}, Lcom/android/i18n/phonenumbers/ShortNumberUtil;-><init>()V

    .line 1748
    .local v5, util:Lcom/android/i18n/phonenumbers/ShortNumberUtil;
    if-eqz p2, :cond_7

    .line 1749
    invoke-virtual {v5, p0, p1}, Lcom/android/i18n/phonenumbers/ShortNumberUtil;->isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    goto :goto_0

    .line 1751
    :cond_7
    invoke-virtual {v5, p0, p1}, Lcom/android/i18n/phonenumbers/ShortNumberUtil;->connectsToEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    goto :goto_0

    .line 1754
    .end local v5           #util:Lcom/android/i18n/phonenumbers/ShortNumberUtil;
    :cond_8
    if-eqz p2, :cond_a

    .line 1755
    const-string v8, "112"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "911"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_9
    move v6, v7

    goto :goto_0

    .line 1757
    :cond_a
    const-string v8, "112"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "911"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_b
    move v6, v7

    goto/16 :goto_0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "number"
    .parameter "useExactMatch"

    .prologue
    .line 1633
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isGlobalPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "phoneNumber"

    .prologue
    .line 1015
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1016
    const/4 v1, 0x0

    .line 1020
    :goto_0
    return v1

    .line 1019
    :cond_0
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1020
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method public static isISODigit(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 91
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .parameter "number"
    .parameter "context"

    .prologue
    .line 1775
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method private static isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z
    .locals 6
    .parameter "number"
    .parameter "context"
    .parameter "useExactMatch"

    .prologue
    .line 1829
    const-string v3, "country_detector"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 1831
    .local v1, detector:Landroid/location/CountryDetector;
    if-eqz v1, :cond_0

    .line 1832
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 1839
    .local v0, countryIso:Ljava/lang/String;
    :goto_0
    invoke-static {p0, v0, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    return v3

    .line 1834
    .end local v0           #countryIso:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1835
    .local v2, locale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1836
    .restart local v0       #countryIso:Ljava/lang/String;
    const-string v3, "PhoneNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isNanp(Ljava/lang/String;)Z
    .locals 5
    .parameter "dialStr"

    .prologue
    const/16 v4, 0xa

    .line 2118
    const/4 v2, 0x0

    .line 2119
    .local v2, retVal:Z
    if-eqz p0, :cond_2

    .line 2120
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 2121
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2123
    const/4 v2, 0x1

    .line 2124
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 2125
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2126
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2127
    const/4 v2, 0x0

    .line 2136
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_0
    :goto_1
    return v2

    .line 2124
    .restart local v0       #c:C
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2134
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_2
    const-string v3, "isNanp: null dialStr passed in"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static final isNonSeparator(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 115
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNonSeparator(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 1033
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1034
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1035
    const/4 v2, 0x0

    .line 1038
    :goto_1
    return v2

    .line 1033
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1038
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static isOneNanp(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialStr"

    .prologue
    .line 2143
    const/4 v1, 0x0

    .line 2144
    .local v1, retVal:Z
    if-eqz p0, :cond_1

    .line 2145
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2146
    .local v0, newDialStr:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2147
    const/4 v1, 0x1

    .line 2152
    .end local v0           #newDialStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 2150
    :cond_1
    const-string v2, "isOneNanp: null dialStr passed in"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isPause(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 129
    const/16 v0, 0x70

    if-eq p0, v0, :cond_0

    const/16 v0, 0x50

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 1610
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "number"
    .parameter "defaultCountryIso"

    .prologue
    .line 1674
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .parameter "number"
    .parameter "context"

    .prologue
    .line 1803
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static final isReallyDialable(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 109
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSeparator(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 140
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isStartsPostDial(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 124
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isToneWait(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 134
    const/16 v0, 0x77

    if-eq p0, v0, :cond_0

    const/16 v0, 0x57

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTwoToNine(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 2092
    const/16 v0, 0x32

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 2093
    const/4 v0, 0x1

    .line 2095
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUriNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 2168
    if-eqz p0, :cond_1

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 1857
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1864
    .local v1, vmNumber:Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1868
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .end local v1           #vmNumber:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 1858
    :catch_0
    move-exception v0

    .line 1859
    .local v0, ex:Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method public static isWellFormedSmsAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    .line 1006
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1009
    .local v0, networkPortion:Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 372
    const-string v0, "PhoneNumberUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void
.end method

.method private static matchIntlPrefix(Ljava/lang/String;I)Z
    .locals 8
    .parameter "a"
    .parameter "len"

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x30

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2275
    const/4 v2, 0x0

    .line 2276
    .local v2, state:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_7

    .line 2277
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2279
    .local v0, c:C
    packed-switch v2, :pswitch_data_0

    .line 2298
    :pswitch_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2304
    .end local v0           #c:C
    :cond_0
    :goto_1
    return v3

    .line 2281
    .restart local v0       #c:C
    :pswitch_1
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_2

    const/4 v2, 0x1

    .line 2276
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2282
    :cond_2
    if-ne v0, v6, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    .line 2283
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 2287
    :pswitch_2
    if-ne v0, v6, :cond_4

    const/4 v2, 0x3

    goto :goto_2

    .line 2288
    :cond_4
    if-ne v0, v7, :cond_5

    const/4 v2, 0x4

    goto :goto_2

    .line 2289
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 2293
    :pswitch_3
    if-ne v0, v7, :cond_6

    const/4 v2, 0x5

    goto :goto_2

    .line 2294
    :cond_6
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 2304
    .end local v0           #c:C
    :cond_7
    if-eq v2, v4, :cond_8

    const/4 v5, 0x3

    if-eq v2, v5, :cond_8

    const/4 v5, 0x5

    if-ne v2, v5, :cond_0

    :cond_8
    move v3, v4

    goto :goto_1

    .line 2279
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .locals 7
    .parameter "a"
    .parameter "len"

    .prologue
    const/16 v6, 0x31

    const/16 v5, 0x30

    const/4 v3, 0x0

    .line 2314
    const/4 v2, 0x0

    .line 2315
    .local v2, state:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_9

    .line 2316
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2318
    .local v0, c:C
    packed-switch v2, :pswitch_data_0

    .line 2350
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2354
    .end local v0           #c:C
    :cond_0
    :goto_1
    return v3

    .line 2320
    .restart local v0       #c:C
    :pswitch_0
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_2

    const/4 v2, 0x1

    .line 2315
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2321
    :cond_2
    if-ne v0, v5, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    .line 2322
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2326
    :pswitch_1
    if-ne v0, v5, :cond_4

    const/4 v2, 0x3

    goto :goto_2

    .line 2327
    :cond_4
    if-ne v0, v6, :cond_5

    const/4 v2, 0x4

    goto :goto_2

    .line 2328
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2332
    :pswitch_2
    if-ne v0, v6, :cond_6

    const/4 v2, 0x5

    goto :goto_2

    .line 2333
    :cond_6
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2339
    :pswitch_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v2, 0x6

    goto :goto_2

    .line 2340
    :cond_7
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2345
    :pswitch_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2346
    :cond_8
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2354
    .end local v0           #c:C
    :cond_9
    const/4 v4, 0x6

    if-eq v2, v4, :cond_a

    const/4 v4, 0x7

    if-eq v2, v4, :cond_a

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    :cond_a
    const/4 v3, 0x1

    goto :goto_1

    .line 2318
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static matchTrunkPrefix(Ljava/lang/String;I)Z
    .locals 4
    .parameter "a"
    .parameter "len"

    .prologue
    .line 2362
    const/4 v1, 0x0

    .line 2364
    .local v1, found:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 2365
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2367
    .local v0, c:C
    const/16 v3, 0x30

    if-ne v0, v3, :cond_1

    if-nez v1, :cond_1

    .line 2368
    const/4 v1, 0x1

    .line 2364
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2369
    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2370
    const/4 v1, 0x0

    .line 2374
    .end local v0           #c:C
    .end local v1           #found:Z
    :cond_2
    return v1
.end method

.method private static minPositive(II)I
    .locals 0
    .parameter "a"
    .parameter "b"

    .prologue
    .line 360
    if-ltz p0, :cond_2

    if-ltz p1, :cond_2

    .line 361
    if-ge p0, p1, :cond_1

    .line 367
    .end local p0
    :cond_0
    :goto_0
    return p0

    .restart local p0
    :cond_1
    move p0, p1

    .line 361
    goto :goto_0

    .line 362
    :cond_2
    if-gez p0, :cond_0

    .line 364
    if-ltz p1, :cond_3

    move p0, p1

    .line 365
    goto :goto_0

    .line 367
    :cond_3
    const/4 p0, -0x1

    goto :goto_0
.end method

.method public static networkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 2
    .parameter "s"

    .prologue
    .line 1048
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1049
    .local v0, networkPortion:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B
    .locals 2
    .parameter "s"

    .prologue
    .line 1058
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1059
    .local v0, networkPortion:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 1516
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1517
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1518
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 1519
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1521
    .local v0, c:C
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 1522
    .local v1, digit:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 1523
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1518
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1524
    :cond_1
    if-nez v2, :cond_2

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_2

    .line 1525
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1526
    :cond_2
    const/16 v5, 0x61

    if-lt v0, v5, :cond_3

    const/16 v5, 0x7a

    if-le v0, v5, :cond_4

    :cond_3
    const/16 v5, 0x41

    if-lt v0, v5, :cond_0

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_0

    .line 1527
    :cond_4
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1530
    .end local v0           #c:C
    .end local v1           #digit:I
    :goto_2
    return-object v5

    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method public static numberToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 1
    .parameter "number"

    .prologue
    .line 1071
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private static numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .locals 17
    .parameter "number"
    .parameter "includeLength"

    .prologue
    .line 1080
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 1081
    .local v7, numberLenReal:I
    move v6, v7

    .line 1082
    .local v6, numberLenEffective:I
    const/16 v14, 0x2b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_2

    const/4 v4, 0x1

    .line 1083
    .local v4, hasPlus:Z
    :goto_0
    if-eqz v4, :cond_0

    add-int/lit8 v6, v6, -0x1

    .line 1086
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1087
    .local v12, sb:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v7, :cond_4

    .line 1088
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1089
    .local v1, c:C
    const/16 v14, 0x2b

    if-eq v1, v14, :cond_1

    const/16 v14, 0x20

    if-eq v1, v14, :cond_1

    const/16 v14, 0x2d

    if-eq v1, v14, :cond_1

    const/16 v14, 0x2e

    if-ne v1, v14, :cond_3

    .line 1087
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1082
    .end local v1           #c:C
    .end local v4           #hasPlus:Z
    .end local v5           #i:I
    .end local v12           #sb:Ljava/lang/StringBuilder;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1090
    .restart local v1       #c:C
    .restart local v4       #hasPlus:Z
    .restart local v5       #i:I
    .restart local v12       #sb:Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1092
    .end local v1           #c:C
    :cond_4
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1093
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 1094
    move v6, v7

    .line 1097
    if-nez v6, :cond_5

    const/4 v10, 0x0

    .line 1122
    :goto_3
    return-object v10

    .line 1099
    :cond_5
    add-int/lit8 v14, v6, 0x1

    div-int/lit8 v11, v14, 0x2

    .line 1100
    .local v11, resultLen:I
    const/4 v3, 0x1

    .line 1101
    .local v3, extraBytes:I
    if-eqz p1, :cond_6

    add-int/lit8 v3, v3, 0x1

    .line 1102
    :cond_6
    add-int/2addr v11, v3

    .line 1104
    new-array v10, v11, [B

    .line 1106
    .local v10, result:[B
    const/4 v2, 0x0

    .line 1107
    .local v2, digitCount:I
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v7, :cond_9

    .line 1108
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1109
    .restart local v1       #c:C
    const/16 v14, 0x2b

    if-ne v1, v14, :cond_7

    .line 1107
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1110
    :cond_7
    and-int/lit8 v14, v2, 0x1

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    const/4 v13, 0x4

    .line 1111
    .local v13, shift:I
    :goto_6
    shr-int/lit8 v14, v2, 0x1

    add-int/2addr v14, v3

    aget-byte v15, v10, v14

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    move-result v16

    and-int/lit8 v16, v16, 0xf

    shl-int v16, v16, v13

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    or-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v10, v14

    .line 1112
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1110
    .end local v13           #shift:I
    :cond_8
    const/4 v13, 0x0

    goto :goto_6

    .line 1116
    .end local v1           #c:C
    :cond_9
    and-int/lit8 v14, v2, 0x1

    const/4 v15, 0x1

    if-ne v14, v15, :cond_a

    shr-int/lit8 v14, v2, 0x1

    add-int/2addr v14, v3

    aget-byte v15, v10, v14

    or-int/lit16 v15, v15, 0xf0

    int-to-byte v15, v15

    aput-byte v15, v10, v14

    .line 1118
    :cond_a
    const/4 v8, 0x0

    .line 1119
    .local v8, offset:I
    if-eqz p1, :cond_b

    add-int/lit8 v9, v8, 0x1

    .end local v8           #offset:I
    .local v9, offset:I
    add-int/lit8 v14, v11, -0x1

    int-to-byte v14, v14

    aput-byte v14, v10, v8

    move v8, v9

    .line 1120
    .end local v9           #offset:I
    .restart local v8       #offset:I
    :cond_b
    if-eqz v4, :cond_c

    const/16 v14, 0x91

    :goto_7
    int-to-byte v14, v14

    aput-byte v14, v10, v8

    goto :goto_3

    :cond_c
    const/16 v14, 0x81

    goto :goto_7
.end method

.method private static processPlusCodeWithinNanp(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "networkDialStr"

    .prologue
    const/4 v5, 0x1

    .line 2203
    move-object v2, p0

    .line 2208
    .local v2, retStr:Ljava/lang/String;
    if-eqz p0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 2211
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2212
    .local v1, newStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2214
    move-object v2, v1

    .line 2222
    .end local v1           #newStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 2216
    .restart local v1       #newStr:Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultIdp()Ljava/lang/String;

    move-result-object v0

    .line 2218
    .local v0, idpStr:Ljava/lang/String;
    const-string v3, "[+]"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static removeDashes(Landroid/text/Editable;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 1383
    const/4 v0, 0x0

    .line 1384
    .local v0, p:I
    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1385
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 1386
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 1388
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1391
    :cond_1
    return-void
.end method

.method public static replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "number"

    .prologue
    .line 1542
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1543
    .local v5, normalizedDigits:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-char v1, v0, v3

    .line 1544
    .local v1, c:C
    const/16 v6, 0xa

    invoke-static {v1, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 1545
    .local v2, digit:I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 1546
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1543
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1548
    :cond_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1551
    .end local v1           #c:C
    .end local v2           #digit:I
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "s"
    .parameter "TOA"

    .prologue
    .line 776
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 782
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 778
    .restart local p0
    :cond_1
    const/16 v0, 0x91

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 297
    if-nez p0, :cond_0

    .line 298
    const/4 v5, 0x0

    .line 314
    :goto_0
    return-object v5

    .line 300
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 301
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 303
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 304
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 306
    .local v0, c:C
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 307
    .local v1, digit:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 308
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 309
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 310
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 314
    .end local v0           #c:C
    .end local v1           #digit:I
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "phoneNumber"

    .prologue
    .line 726
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 727
    .local v0, np:Ljava/lang/String;
    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toaFromString(Ljava/lang/String;)I
    .locals 2
    .parameter "s"

    .prologue
    .line 792
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    .line 793
    const/16 v0, 0x91

    .line 796
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x81

    goto :goto_0
.end method

.method private static tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .locals 11
    .parameter "str"
    .parameter "acceptThailandCase"

    .prologue
    const/16 v10, 0x36

    const/16 v9, 0x30

    const/16 v8, 0x31

    const/4 v6, 0x0

    .line 2441
    const/4 v5, 0x0

    .line 2442
    .local v5, state:I
    const/4 v0, 0x0

    .line 2443
    .local v0, ccc:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2444
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 2445
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2446
    .local v1, ch:C
    packed-switch v5, :pswitch_data_0

    .line 2515
    .end local v1           #ch:C
    :cond_0
    :goto_1
    return-object v6

    .line 2448
    .restart local v1       #ch:C
    :pswitch_0
    const/16 v7, 0x2b

    if-ne v1, v7, :cond_2

    const/4 v5, 0x1

    .line 2444
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2449
    :cond_2
    if-ne v1, v9, :cond_3

    const/4 v5, 0x2

    goto :goto_2

    .line 2450
    :cond_3
    if-ne v1, v8, :cond_4

    .line 2451
    if-eqz p1, :cond_0

    .line 2452
    const/16 v5, 0x8

    goto :goto_2

    .line 2456
    :cond_4
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 2462
    :pswitch_1
    if-ne v1, v9, :cond_5

    const/4 v5, 0x3

    goto :goto_2

    .line 2463
    :cond_5
    if-ne v1, v8, :cond_6

    const/4 v5, 0x4

    goto :goto_2

    .line 2464
    :cond_6
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 2470
    :pswitch_2
    if-ne v1, v8, :cond_7

    const/4 v5, 0x5

    goto :goto_2

    .line 2471
    :cond_7
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 2482
    :pswitch_3
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    .line 2483
    .local v4, ret:I
    if-lez v4, :cond_c

    .line 2484
    mul-int/lit8 v7, v0, 0xa

    add-int v0, v7, v4

    .line 2485
    const/16 v7, 0x64

    if-ge v0, v7, :cond_8

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isCountryCallingCode(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2486
    :cond_8
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, v0, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_1

    .line 2488
    :cond_9
    const/4 v7, 0x1

    if-eq v5, v7, :cond_a

    const/4 v7, 0x3

    if-eq v5, v7, :cond_a

    const/4 v7, 0x5

    if-ne v5, v7, :cond_b

    .line 2489
    :cond_a
    const/4 v5, 0x6

    goto :goto_2

    .line 2491
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2493
    :cond_c
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 2499
    .end local v4           #ret:I
    :pswitch_4
    if-ne v1, v10, :cond_d

    const/16 v5, 0x9

    goto :goto_2

    .line 2500
    :cond_d
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 2505
    :pswitch_5
    if-ne v1, v10, :cond_0

    .line 2506
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    const/16 v7, 0x42

    add-int/lit8 v8, v2, 0x1

    invoke-direct {v6, v7, v8}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_1

    .line 2446
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static tryGetISODigit(C)I
    .locals 1
    .parameter "ch"

    .prologue
    .line 2412
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 2413
    add-int/lit8 v0, p0, -0x30

    .line 2415
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I
    .locals 5
    .parameter "str"
    .parameter "currentIndex"

    .prologue
    const/4 v3, -0x1

    .line 2528
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2529
    .local v2, length:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2530
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2531
    .local v0, ch:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    if-ltz v4, :cond_1

    .line 2532
    add-int/lit8 v3, v1, 0x1

    .line 2537
    .end local v0           #ch:C
    :cond_0
    return v3

    .line 2533
    .restart local v0       #ch:C
    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2529
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
