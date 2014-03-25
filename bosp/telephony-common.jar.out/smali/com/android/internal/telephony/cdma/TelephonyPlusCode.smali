.class public Lcom/android/internal/telephony/cdma/TelephonyPlusCode;
.super Ljava/lang/Object;
.source "TelephonyPlusCode.java"


# static fields
.field public static final IDD_MAP_2_CHAR:[Ljava/lang/String; = null

.field public static final IDD_MAP_3_CHAR:[Ljava/lang/String; = null

.field public static final IDD_MAP_4_CHAR:[Ljava/lang/String; = null

.field public static final IDD_MAP_5_CHAR:[Ljava/lang/String; = null

.field static final LOG_TAG:Ljava/lang/String; = "TelephonyPlusCode"

.field public static final MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray; = null

.field public static final MccIddNddSidMap_support:[Lcom/android/internal/telephony/cdma/MccIddNddSid; = null

.field public static final MccSidLtmOffMap_support:[Lcom/android/internal/telephony/cdma/MccSidLtmOff; = null

.field public static final PROPERTY_ICC_CDMA_OPERATOR_MCC:Ljava/lang/String; = "cdma.icc.operator.mcc"

.field public static final PROPERTY_OPERATOR_MCC:Ljava/lang/String; = "cdma.operator.mcc"

.field public static final PROPERTY_OPERATOR_SID:Ljava/lang/String; = "cdma.operator.sid"

.field public static final PROPERTY_TIME_LTMOFFSET:Ljava/lang/String; = "cdma.operator.ltmoffset"

.field private static SidMccMncList_support:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/SidMccMnc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/16 v13, 0x1c2

    const/16 v12, -0xa

    const/16 v11, -0x14

    const/16 v10, 0x136

    const/16 v9, 0x12

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->SidMccMncList_support:Ljava/util/List;

    .line 40
    const/16 v0, 0x17

    new-array v7, v0, [Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/4 v8, 0x0

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x12e

    const-string v2, "1"

    const/16 v3, 0x4000

    const/16 v4, 0x47ff

    const-string v5, "011"

    const-string v6, "1"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x1

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const-string v2, "1"

    const/4 v3, 0x1

    const/16 v4, 0x87f

    const-string v5, "011"

    const-string v6, "1"

    move v1, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x2

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x137

    const-string v2, "1"

    const/16 v3, 0x900

    const/16 v4, 0x1dff

    const-string v5, "011"

    const-string v6, "1"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x3

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x138

    const-string v2, "1"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "011"

    const-string v6, "1"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x4

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x139

    const-string v2, "1"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "011"

    const-string v6, "1"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x5

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x13a

    const-string v2, "1"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "011"

    const-string v6, "1"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x6

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x13b

    const-string v2, "1"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "011"

    const-string v6, "1"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x7

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x13c

    const-string v2, "1"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "011"

    const-string v6, "1"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x8

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x14e

    const-string v2, "52"

    const/16 v3, 0x6000

    const/16 v4, 0x61f3

    const-string v5, "00"

    const-string v6, "01"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x9

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x14e

    const-string v2, "52"

    const/16 v3, 0x620c

    const/16 v4, 0x6224

    const-string v5, "00"

    const-string v6, "01"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0xa

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x194

    const-string v2, "91"

    const/16 v3, 0x3880

    const/16 v4, 0x39ff

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0xb

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1a9

    const-string v2, "972"

    const/16 v3, 0x2100

    const/16 v4, 0x211f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0xc

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1ac

    const-string v2, "976"

    const/16 v3, 0x3ca0

    const/16 v4, 0x3cbf

    const-string v5, "002"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0xd

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1b8

    const-string v2, "81"

    const/16 v3, 0x3000

    const/16 v4, 0x33ff

    const-string v5, "010"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0xe

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const-string v2, "82"

    const/16 v3, 0x880

    const/16 v4, 0x8ff

    const-string v5, "00700"

    const-string v6, "0"

    move v1, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0xf

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1c4

    const-string v2, "84"

    const/16 v3, 0x3400

    const/16 v4, 0x347f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x10

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1c6

    const-string v2, "852"

    const/16 v3, 0x2990

    const/16 v4, 0x299f

    const-string v5, "001"

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x11

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1c7

    const-string v2, "853"

    const/16 v3, 0x2c20

    const/16 v4, 0x2c2f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1cc

    const-string v2, "86"

    const/16 v3, 0x3500

    const/16 v4, 0x37ff

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v9

    const/16 v8, 0x13

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1cc

    const-string v2, "86"

    const/16 v3, 0x6400

    const/16 v4, 0x65ff

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x14

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1d2

    const-string v2, "886"

    const/16 v3, 0x34c0

    const/16 v4, 0x34df

    const-string v5, "005"

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x15

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1d6

    const-string v2, "880"

    const/16 v3, 0x34a0

    const/16 v4, 0x34bf

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x16

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1fe

    const-string v2, "62"

    const/16 v3, 0x2900

    const/16 v4, 0x297f

    const-string v5, "001"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    sput-object v7, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->MccIddNddSidMap_support:[Lcom/android/internal/telephony/cdma/MccIddNddSid;

    .line 66
    const/16 v0, 0x64

    new-array v0, v0, [Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/4 v3, 0x1

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x194

    const/4 v4, 0x1

    const/16 v5, 0xb

    const/16 v6, 0xb

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/4 v3, 0x7

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x194

    const/4 v4, 0x7

    const/16 v5, 0xb

    const/16 v6, 0xb

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0xd

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c6

    const/16 v4, 0xd

    const/16 v5, 0x10

    const/16 v6, 0x10

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x457

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x457

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x458

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x458

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x459

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x459

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x6a4

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x6a4

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x881

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x881

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x883

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x883

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v2, 0x885

    invoke-direct {v1, v10, v2, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v1, v0, v9

    const/16 v1, 0x13

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x885

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x887

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x887

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x889

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x889

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x88b

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x88b

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x88d

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x88d

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x88f

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x88f

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x891

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x891

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x893

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x893

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x895

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x895

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x897

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x897

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x899

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x899

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x89b

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x89b

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x89d

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x89d

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x89f

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x89f

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8a1

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8a1

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8a3

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8a3

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8a5

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8a5

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8a7

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8a7

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8a9

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8a9

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8ab

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8ab

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8ad

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8ad

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8af

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8af

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8b1

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8b1

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8b3

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8b3

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8b5

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8b5

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8b7

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8b7

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8b9

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8b9

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8bb

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8bb

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8bd

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8bd

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8bf

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8bf

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8c1

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8c1

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8c3

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8c3

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8fd

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8fd

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8ff

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8ff

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x941

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x941

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x942

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x942

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x943

    invoke-direct {v2, v10, v3, v11, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x943

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8ae

    invoke-direct {v2, v13, v3, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x194

    const/16 v4, 0x8ae

    const/16 v5, 0xb

    const/16 v6, 0xb

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1b8

    const/16 v4, 0x30ad

    invoke-direct {v2, v3, v4, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1d6

    const/16 v4, 0x30ad

    const/16 v5, 0xc

    const/16 v6, 0xc

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1b8

    const/16 v4, 0x30af

    invoke-direct {v2, v3, v4, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1d6

    const/16 v4, 0x30af

    const/16 v5, 0xc

    const/16 v6, 0xc

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1b8

    const/16 v4, 0x30b0

    invoke-direct {v2, v3, v4, v9, v9}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1d6

    const/16 v4, 0x30b0

    const/16 v5, 0xc

    const/16 v6, 0xc

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->MccSidLtmOffMap_support:[Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    .line 125
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    .line 127
    sget-object v0, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    const/16 v2, 0x56

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 128
    sget-object v0, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xf

    const/16 v2, 0x56

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 129
    sget-object v0, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x56

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 130
    sget-object v0, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    const/16 v2, 0x5b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 133
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "00"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->IDD_MAP_2_CHAR:[Ljava/lang/String;

    .line 137
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "000"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "001"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "002"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "005"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "009"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "010"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "011"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "020"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "810"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->IDD_MAP_3_CHAR:[Ljava/lang/String;

    .line 142
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0011"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "0015"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->IDD_MAP_4_CHAR:[Ljava/lang/String;

    .line 146
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "00700"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "17700"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->IDD_MAP_5_CHAR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Add(II)V
    .locals 2
    .parameter "mSid"
    .parameter "mMccMnc"

    .prologue
    .line 680
    new-instance v0, Lcom/android/internal/telephony/cdma/SidMccMnc;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/cdma/SidMccMnc;-><init>(II)V

    .line 681
    .local v0, mSidMccMnc:Lcom/android/internal/telephony/cdma/SidMccMnc;
    sget-object v1, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->SidMccMncList_support:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    return-void
.end method

.method private static InitSidMccMncList()V
    .locals 7

    .prologue
    const v6, 0x4bb00

    const/4 v5, 0x0

    const v4, 0x4bb68

    const v3, 0x4bce4

    const v2, 0x4bafa

    .line 161
    const-string v0, "TelephonyPlusCode"

    const-string v1, "[InitSidMccMncList] InitSidMccMncList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->SidMccMncList_support:Ljava/util/List;

    .line 165
    const/4 v0, 0x2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 166
    const/4 v0, 0x3

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 167
    const/4 v0, 0x4

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 168
    const/4 v0, 0x5

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 169
    const/4 v0, 0x6

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 170
    const/16 v0, 0x8

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 171
    const/16 v0, 0xa

    const v1, 0x4bb36

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 172
    const/16 v0, 0xc

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 173
    const/16 v0, 0xf

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 174
    const/16 v0, 0x11

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 175
    const/16 v0, 0x12

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 176
    const/16 v0, 0x14

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 177
    const/16 v0, 0x15

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 178
    const/16 v0, 0x16

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 179
    const/16 v0, 0x1a

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 180
    const/16 v0, 0x1c

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 181
    const/16 v0, 0x1e

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 182
    const/16 v0, 0x20

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 183
    const/16 v0, 0x28

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 184
    const/16 v0, 0x29

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 185
    const/16 v0, 0x2a

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 186
    const/16 v0, 0x2c

    const v1, 0x4bb36

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 187
    const/16 v0, 0x2d

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 188
    const/16 v0, 0x2e

    const v1, 0x4bb36

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 189
    const/16 v0, 0x30

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 190
    const/16 v0, 0x33

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 191
    const/16 v0, 0x35

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 192
    const/16 v0, 0x36

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 193
    const/16 v0, 0x38

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 194
    const/16 v0, 0x39

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 195
    const/16 v0, 0x3a

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 196
    const/16 v0, 0x3b

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 197
    const/16 v0, 0x3c

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 198
    const/16 v0, 0x40

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 199
    const/16 v0, 0x41

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 200
    const/16 v0, 0x45

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 201
    const/16 v0, 0x49

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 202
    const/16 v0, 0x4a

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 203
    const/16 v0, 0x4e

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 204
    const/16 v0, 0x4f

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 205
    const/16 v0, 0x50

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 206
    const/16 v0, 0x51

    const v1, 0x4bb36

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 207
    const/16 v0, 0x53

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 208
    const/16 v0, 0x54

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 209
    const/16 v0, 0x55

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 210
    const/16 v0, 0x51

    const v1, 0x4bb36

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 211
    const/16 v0, 0x53

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 212
    const/16 v0, 0x54

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 213
    const/16 v0, 0x55

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 214
    const/16 v0, 0x56

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 215
    const/16 v0, 0x5c

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 216
    const/16 v0, 0x5d

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 217
    const/16 v0, 0x5e

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 218
    const/16 v0, 0x5f

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 219
    const/16 v0, 0x60

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 220
    const/16 v0, 0x61

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 221
    const/16 v0, 0x64

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 222
    const/16 v0, 0x6a

    const v1, 0x4bb36

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 223
    const/16 v0, 0x6e

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 224
    const/16 v0, 0x70

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 225
    const/16 v0, 0x71

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 226
    const/16 v0, 0x72

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 227
    const/16 v0, 0x74

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 228
    const/16 v0, 0x77

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 229
    const/16 v0, 0x78

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 230
    const/16 v0, 0x7e

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 231
    const/16 v0, 0x7f

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 232
    const/16 v0, 0x82

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 233
    const/16 v0, 0x85

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 234
    const/16 v0, 0x89

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 235
    const/16 v0, 0x8a

    const v1, 0x4bb36

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 236
    const/16 v0, 0x8b

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 237
    const/16 v0, 0x8c

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 238
    const/16 v0, 0x8e

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 239
    const/16 v0, 0x8f

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 240
    const/16 v0, 0x90

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 241
    const/16 v0, 0x96

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 242
    const/16 v0, 0x98

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 243
    const/16 v0, 0x9a

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 244
    const/16 v0, 0x9c

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 245
    const/16 v0, 0xa2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 246
    const/16 v0, 0xa3

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 247
    const/16 v0, 0xa5

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 248
    const/16 v0, 0xa6

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 249
    const/16 v0, 0xa9

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 250
    const/16 v0, 0xb3

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 251
    const/16 v0, 0xb4

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 252
    const/16 v0, 0xb5

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 253
    const/16 v0, 0xb6

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 254
    const/16 v0, 0xba

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 255
    const/16 v0, 0xbc

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 256
    const/16 v0, 0xbd

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 257
    const/16 v0, 0xbe

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 258
    const/16 v0, 0xcc

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 259
    const/16 v0, 0xcd

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 260
    const/16 v0, 0xd0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 261
    const/16 v0, 0xd4

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 262
    const/16 v0, 0xd6

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 263
    const/16 v0, 0xd7

    const v1, 0x4bb36

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 264
    const/16 v0, 0xd8

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 265
    const/16 v0, 0xdc

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 266
    const/16 v0, 0xde

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 267
    const/16 v0, 0xe0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 268
    const/16 v0, 0xe2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 269
    const/16 v0, 0xe4

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 270
    const/16 v0, 0xe5

    const v1, 0x4bb36

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 271
    const/16 v0, 0xea

    const v1, 0x4bb22

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 272
    const/16 v0, 0xf0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 273
    const/16 v0, 0xf1

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 274
    const/16 v0, 0xf4

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 275
    const/16 v0, 0xf9

    const v1, 0x4bf5a

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 276
    const/16 v0, 0xfa

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 277
    const/16 v0, 0x100

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 278
    const/16 v0, 0x104

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 279
    const/16 v0, 0x106

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 280
    const/16 v0, 0x108

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 281
    const/16 v0, 0x10a

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 282
    const/16 v0, 0x110

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 283
    const/16 v0, 0x114

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 284
    const/16 v0, 0x115

    const v1, 0x4bb0e

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 285
    const/16 v0, 0x119

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 286
    const/16 v0, 0x11c

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 287
    const/16 v0, 0x11d

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 288
    const/16 v0, 0x11e

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 289
    const/16 v0, 0x126

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 290
    const/16 v0, 0x12a

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 291
    const/16 v0, 0x12b

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 292
    const/16 v0, 0x12c

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 293
    const/16 v0, 0x12e

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 294
    const/16 v0, 0x138

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 295
    const/16 v0, 0x13c

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 296
    const/16 v0, 0x13e

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 297
    const/16 v0, 0x13f

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 298
    const/16 v0, 0x143

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 299
    const/16 v0, 0x144

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 300
    const/16 v0, 0x148

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 301
    const/16 v0, 0x149

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 302
    const/16 v0, 0x14a

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 303
    const/16 v0, 0x154

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 304
    const/16 v0, 0x155

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 305
    const/16 v0, 0x156

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 306
    const/16 v0, 0x15c

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 307
    const/16 v0, 0x15d

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 308
    const/16 v0, 0x15e

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 309
    const/16 v0, 0x167

    const v1, 0x4bb36

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 310
    const/16 v0, 0x169

    const v1, 0x4bb36

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 311
    const/16 v0, 0x16a

    const v1, 0xa606

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 312
    const/16 v0, 0x16c

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 313
    const/16 v0, 0x170

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 314
    const/16 v0, 0x172

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 315
    const/16 v0, 0x173

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 316
    const/16 v0, 0x176

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 317
    const/16 v0, 0x178

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 318
    const/16 v0, 0x179

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 319
    const/16 v0, 0x180

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 320
    const/16 v0, 0x182

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 321
    const/16 v0, 0x188

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 322
    const/16 v0, 0x18c

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 323
    const/16 v0, 0x190

    const v1, 0x4bb36

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 324
    const/16 v0, 0x193

    const v1, 0x4bb0e

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 325
    const/16 v0, 0x194

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 326
    const/16 v0, 0x19e

    const v1, 0x4bb36

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 327
    const/16 v0, 0x1a0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 328
    const/16 v0, 0x1a2

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 329
    const/16 v0, 0x1a8

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 330
    const/16 v0, 0x1aa

    const v1, 0x4bb36

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 331
    const/16 v0, 0x1ac

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 332
    const/16 v0, 0x1b4

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 333
    const/16 v0, 0x1b8

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 334
    const/16 v0, 0x1bb

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 335
    const/16 v0, 0x1bc

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 336
    const/16 v0, 0x1bf

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 337
    const/16 v0, 0x1c0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 338
    const/16 v0, 0x1c3

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 339
    const/16 v0, 0x1cf

    const v1, 0x4bb36

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 340
    const/16 v0, 0x1de

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 341
    const/16 v0, 0x1e6

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 342
    const/16 v0, 0x1e7

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 343
    const/16 v0, 0x1f2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 344
    const/16 v0, 0x1f6

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 345
    const/16 v0, 0x1fa

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 346
    const/16 v0, 0x1fe

    const v1, 0x4bba4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 347
    const/16 v0, 0x1ff

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 348
    const/16 v0, 0x208

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 349
    const/16 v0, 0x210

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 350
    const/16 v0, 0x211

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 351
    const/16 v0, 0x212

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 352
    const/16 v0, 0x214

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 353
    const/16 v0, 0x21b

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 354
    const/16 v0, 0x220

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 355
    const/16 v0, 0x222

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 356
    const/16 v0, 0x226

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 357
    const/16 v0, 0x22b

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 358
    const/16 v0, 0x23e

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 359
    const/16 v0, 0x242

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 360
    const/16 v0, 0x243

    const v1, 0x4bb36

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 361
    const/16 v0, 0x244

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 362
    const/16 v0, 0x24b

    const v1, 0x4bb36

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 363
    const/16 v0, 0x25f

    const v1, 0x4bb36

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 364
    const/16 v0, 0x3f7

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 365
    const/16 v0, 0x3fa

    const v1, 0x4bb22

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 366
    const/16 v0, 0x3fe

    const v1, 0x4bb22

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 367
    const/16 v0, 0x400

    const v1, 0x4bc4e

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 368
    const/16 v0, 0x402

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 369
    const/16 v0, 0x403

    const v1, 0x4bc30

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 370
    const/16 v0, 0x404

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 371
    const/16 v0, 0x405

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 372
    const/16 v0, 0x406

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 373
    const/16 v0, 0x40a

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 374
    const/16 v0, 0x40e

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 375
    const/16 v0, 0x41f

    const v1, 0x4bb36

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 376
    const/16 v0, 0x422

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 377
    const/16 v0, 0x424

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 378
    const/16 v0, 0x428

    const v1, 0x4c126

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 379
    const/16 v0, 0x42d

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 380
    const/16 v0, 0x43b

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 381
    const/16 v0, 0x43e

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 382
    const/16 v0, 0x440

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 383
    const/16 v0, 0x445

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 384
    const/16 v0, 0x44d

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 385
    const/16 v0, 0x464

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 386
    const/16 v0, 0x469

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 387
    const/16 v0, 0x473

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 388
    const/16 v0, 0x47c

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 389
    const/16 v0, 0x47f

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 390
    const/16 v0, 0x481

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 391
    const/16 v0, 0x483

    const v1, 0x4bb36

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 392
    const/16 v0, 0x48c

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 393
    const/16 v0, 0x48d

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 394
    const/16 v0, 0x495

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 395
    const/16 v0, 0x496

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 396
    const/16 v0, 0x49c

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 397
    const/16 v0, 0x4a5

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 398
    const/16 v0, 0x4a8

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 399
    const/16 v0, 0x4b0

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 400
    const/16 v0, 0x4bb

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 401
    const/16 v0, 0x4bc

    const v1, 0x4c086

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 402
    const/16 v0, 0x4bd

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 403
    const/16 v0, 0x4bf

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 404
    const/16 v0, 0x4c0

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 405
    const/16 v0, 0x4c4

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 406
    const/16 v0, 0x4d0

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 407
    const/16 v0, 0x4d2

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 408
    const/16 v0, 0x4d4

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 409
    const/16 v0, 0x4e7

    const v1, 0x4be6a

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 410
    const/16 v0, 0x4ea

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 411
    const/16 v0, 0x4f3

    const v1, 0x4be6a

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 412
    const/16 v0, 0x4f7

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 413
    const/16 v0, 0x4f8

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 414
    const/16 v0, 0x500

    const v1, 0x4c090

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 415
    const/16 v0, 0x50a

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 416
    const/16 v0, 0x525

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 417
    const/16 v0, 0x528

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 418
    const/16 v0, 0x534

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 419
    const/16 v0, 0x535

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 420
    const/16 v0, 0x537

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 421
    const/16 v0, 0x538

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 422
    const/16 v0, 0x539

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 423
    const/16 v0, 0x53a

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 424
    const/16 v0, 0x53d

    const v1, 0x4bb0e

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 425
    const/16 v0, 0x541

    const v1, 0x4bb0e

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 426
    const/16 v0, 0x546

    const v1, 0x4bf0a

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 427
    const/16 v0, 0x557

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 428
    const/16 v0, 0x559

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 429
    const/16 v0, 0x55a

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 430
    const/16 v0, 0x55c

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 431
    const/16 v0, 0x55f

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 432
    const/16 v0, 0x566

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 433
    const/16 v0, 0x567

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 434
    const/16 v0, 0x569

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 435
    const/16 v0, 0x571

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 436
    const/16 v0, 0x572

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 437
    const/16 v0, 0x574

    const v1, 0x4c07c

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 438
    const/16 v0, 0x577

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 439
    const/16 v0, 0x578

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 440
    const/16 v0, 0x57b

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 441
    const/16 v0, 0x57e

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 442
    const/16 v0, 0x580

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 443
    const/16 v0, 0x583

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 444
    const/16 v0, 0x58b

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 445
    const/16 v0, 0x58f

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 446
    const/16 v0, 0x591

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 447
    const/16 v0, 0x59a

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 448
    const/16 v0, 0x5a1

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 449
    const/16 v0, 0x5ad

    const v1, 0x4bef6

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 450
    const/16 v0, 0x5b9

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 451
    const/16 v0, 0x5ba

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 452
    const/16 v0, 0x5c1

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 453
    const/16 v0, 0x5cc

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 454
    const/16 v0, 0x5d5

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 455
    const/16 v0, 0x5d8

    const v1, 0x4bb54

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 456
    const/16 v0, 0x5db

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 457
    const/16 v0, 0x5dc

    const v1, 0x4bb54

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 458
    const/16 v0, 0x5e0

    const v1, 0x4bb54

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 459
    const/16 v0, 0x5e2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 460
    const/16 v0, 0x5e4

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 461
    const/16 v0, 0x5ec

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 462
    const/16 v0, 0x5f2

    const v1, 0x4bb72

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 463
    const/16 v0, 0x5f8

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 464
    const/16 v0, 0x5fa

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 465
    const/16 v0, 0x5fc

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 466
    const/16 v0, 0x5fe

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 467
    const/16 v0, 0x600

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 468
    const/16 v0, 0x602

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 469
    const/16 v0, 0x604

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 470
    const/16 v0, 0x605

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 471
    const/16 v0, 0x606

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 472
    const/16 v0, 0x608

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 473
    const/16 v0, 0x60a

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 474
    const/16 v0, 0x60c

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 475
    const/16 v0, 0x617

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 476
    const/16 v0, 0x61f

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 477
    const/16 v0, 0x626

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 478
    const/16 v0, 0x636

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 479
    const/16 v0, 0x63b

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 480
    const/16 v0, 0x63e

    const v1, 0x4bf28

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 481
    const/16 v0, 0x647

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 482
    const/16 v0, 0x648

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 483
    const/16 v0, 0x649

    const v1, 0x4be6a

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 484
    const/16 v0, 0x64a

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 485
    const/16 v0, 0x668

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 486
    const/16 v0, 0x66b

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 487
    const/16 v0, 0x66d

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 488
    const/16 v0, 0x672

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 489
    const/16 v0, 0x674

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 490
    const/16 v0, 0x67d

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 491
    const/16 v0, 0x69c

    const v1, 0x4bea6

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 492
    const/16 v0, 0x6a0

    const v1, 0x4bb54

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 493
    const/16 v0, 0x6a7

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 494
    const/16 v0, 0x6cb

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 495
    const/16 v0, 0x6cc

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 496
    const/16 v0, 0x6cd

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 497
    const/16 v0, 0x6ce

    const v1, 0x4bb04

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 498
    const/16 v0, 0x6d4

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 499
    const/16 v0, 0x6d5

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 500
    const/16 v0, 0x6df

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 501
    const/16 v0, 0x6f0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 502
    const/16 v0, 0x6f3

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 503
    const/16 v0, 0x6f8

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 504
    const/16 v0, 0x702

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 505
    const/16 v0, 0x70a

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 506
    const/16 v0, 0x714

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 507
    const/16 v0, 0x71a

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 508
    const/16 v0, 0x71f

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 509
    const/16 v0, 0x721

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 510
    const/16 v0, 0x722

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 511
    const/16 v0, 0x723

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 512
    const/16 v0, 0x724

    const v1, 0x4bb04

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 513
    const/16 v0, 0x726

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 514
    const/16 v0, 0x74c

    const v1, 0x4bec4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 515
    const/16 v0, 0x764

    const v1, 0x4be4c

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 516
    const/16 v0, 0x76e

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 517
    const/16 v0, 0x778

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 518
    const/16 v0, 0x782

    const v1, 0x4bf6e

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 519
    const/16 v0, 0x78c

    const v1, 0x4bed8

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 520
    const/16 v0, 0x79d

    const v1, 0x4bf00

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 521
    const/16 v0, 0x7b2

    const v1, 0x4bd0c

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 522
    const/16 v0, 0x7b8

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 523
    const/16 v0, 0x7c5

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 524
    const/16 v0, 0x7cc

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 525
    const/16 v0, 0x7f6

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 526
    const/16 v0, 0x80a

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 527
    const/16 v0, 0x843

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 528
    const/16 v0, 0x847

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 529
    const/16 v0, 0x851

    const v1, 0x4be6a

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 530
    const/16 v0, 0x85d

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 531
    const/16 v0, 0xbb8

    const v1, 0x4bf00

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 532
    const/16 v0, 0xbda

    const v1, 0x4bf00

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 533
    const/16 v0, 0xbfa

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 534
    const/16 v0, 0xc04

    const v1, 0x4bb04

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 535
    const/16 v0, 0xc9a

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 536
    const/16 v0, 0xd86

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 537
    const/16 v0, 0x1007

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 538
    const/16 v0, 0x100a

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 539
    const/16 v0, 0x100b

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 540
    const/16 v0, 0x100e

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 541
    const/16 v0, 0x1017

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 542
    const/16 v0, 0x1018

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 543
    const/16 v0, 0x1019

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 544
    const/16 v0, 0x101c

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 545
    const/16 v0, 0x101e

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 546
    const/16 v0, 0x1024

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 547
    const/16 v0, 0x1027

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 548
    const/16 v0, 0x102a

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 549
    const/16 v0, 0x102b

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 550
    const/16 v0, 0x1030

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 551
    const/16 v0, 0x1031

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 552
    const/16 v0, 0x1034

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 553
    const/16 v0, 0x1037

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 554
    const/16 v0, 0x1038

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 555
    const/16 v0, 0x1039

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 556
    const/16 v0, 0x103a

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 557
    const/16 v0, 0x103b

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 558
    const/16 v0, 0x103d

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 559
    const/16 v0, 0x103f

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 560
    const/16 v0, 0x1040

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 561
    const/16 v0, 0x1042

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 562
    const/16 v0, 0x1044

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 563
    const/16 v0, 0x1046

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 564
    const/16 v0, 0x1048

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 565
    const/16 v0, 0x104a

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 566
    const/16 v0, 0x104b

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 567
    const/16 v0, 0x104e

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 568
    const/16 v0, 0x1054

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 569
    const/16 v0, 0x1055

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 570
    const/16 v0, 0x1056

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 571
    const/16 v0, 0x1057

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 572
    const/16 v0, 0x105a

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 573
    const/16 v0, 0x105c

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 574
    const/16 v0, 0x105e

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 575
    const/16 v0, 0x1060

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 576
    const/16 v0, 0x1063

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 577
    const/16 v0, 0x1066

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 578
    const/16 v0, 0x1067

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 579
    const/16 v0, 0x1081

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 580
    const/16 v0, 0x10b2

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 581
    const/16 v0, 0x10c4

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 582
    const/16 v0, 0x10e5

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 583
    const/16 v0, 0x1118

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 584
    const/16 v0, 0x111d

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 585
    const/16 v0, 0x1120

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 586
    const/16 v0, 0x1126

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 587
    const/16 v0, 0x112c

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 588
    const/16 v0, 0x113d

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 589
    const/16 v0, 0x1142

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 590
    const/16 v0, 0x119d

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 591
    const/16 v0, 0x11a6

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 592
    const/16 v0, 0x11b7

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 593
    const/16 v0, 0x120e

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 594
    const/16 v0, 0x1227

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 595
    const/16 v0, 0x122e

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 596
    const/16 v0, 0x123b

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 597
    const/16 v0, 0x1255

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 598
    const/16 v0, 0x1256

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 599
    const/16 v0, 0x1287

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 600
    const/16 v0, 0x12a3

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 601
    const/16 v0, 0x12c9

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 602
    const/16 v0, 0x12cc

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 603
    const/16 v0, 0x12dc

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 604
    const/16 v0, 0x12f9

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 605
    const/16 v0, 0x133b

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 606
    const/16 v0, 0x1340

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 607
    const/16 v0, 0x1361

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 608
    const/16 v0, 0x136d

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 609
    const/16 v0, 0x1373

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 610
    const/16 v0, 0x1376

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 611
    const/16 v0, 0x139b

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 612
    const/16 v0, 0x13a3

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 613
    const/16 v0, 0x13f1

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 614
    const/16 v0, 0x13fc

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 615
    const/16 v0, 0x13fd

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 616
    const/16 v0, 0x1416

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 617
    const/16 v0, 0x1419

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 618
    const/16 v0, 0x1435

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 619
    const/16 v0, 0x1495

    const v1, 0x4bb22

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 620
    const/16 v0, 0x14e7

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 621
    const/16 v0, 0x14f1

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 622
    const/16 v0, 0x150a

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 623
    const/16 v0, 0x154a

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 624
    const/16 v0, 0x1552

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 625
    const/16 v0, 0x1555

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 626
    const/16 v0, 0x1586

    const v1, 0x4bb22

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 627
    const/16 v0, 0x1589

    const v1, 0x4bb22

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 628
    const/16 v0, 0x15a4

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 629
    const/16 v0, 0x15d2

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 630
    const/16 v0, 0x15f2

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 631
    const/16 v0, 0x161c

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 632
    const/16 v0, 0x1623

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 633
    const/16 v0, 0x1632

    const v1, 0x4bb22

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 634
    const/16 v0, 0x1635

    const v1, 0x4bb22

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 635
    const/16 v0, 0x167c

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 636
    const/16 v0, 0x1714

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 637
    const/16 v0, 0x1717

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 638
    const/16 v0, 0x171a

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 639
    const/16 v0, 0x1739

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 640
    const/16 v0, 0x1869

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 641
    const/16 v0, 0x18b3

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 642
    const/16 v0, 0x18e3

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 643
    const/16 v0, 0x190f

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 644
    const/16 v0, 0x1919

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 645
    const/16 v0, 0x1927

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 646
    const/16 v0, 0x1929

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 647
    const/16 v0, 0x1958

    const v1, 0x4bdca

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 648
    const/16 v0, 0x195a

    const v1, 0x4c090

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 649
    const/16 v0, 0x1c94

    const v1, 0x4bf00

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 650
    const/16 v0, 0x1fa1

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 651
    const/16 v0, 0x1ff0

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 652
    const/16 v0, 0x2280

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 653
    const/16 v0, 0x229d

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 654
    const/16 v0, 0x229f

    const v1, 0x4bf00

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 655
    const/16 v0, 0x22f6

    const v1, 0x4bf00

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 656
    const/16 v0, 0x241e

    const v1, 0x4bf00

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 657
    const/16 v0, 0x2474

    const v1, 0x4bf00

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 658
    const/16 v0, 0x255a

    const v1, 0x4bf00

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 659
    const/16 v0, 0x4000

    const/16 v1, 0x764e

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 660
    const/16 v0, 0x4006

    const v1, 0x49e6e

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 661
    const/16 v0, 0x4018

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 662
    const/16 v0, 0x401a

    const v1, 0x49e3e

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 663
    const/16 v0, 0x401c

    const v1, 0x49e3e

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 664
    const/16 v0, 0x401e

    const v1, 0x49e6f

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 665
    const/16 v0, 0x4022

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 666
    const/16 v0, 0x4024

    const v1, 0x49e12

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 667
    const/16 v0, 0x4026

    const/16 v1, 0x764e

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 668
    const/16 v0, 0x402c

    const v1, 0x49e44

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 669
    const/16 v0, 0x402e

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 670
    const/16 v0, 0x404e

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 671
    const/16 v0, 0x4058

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 672
    const/16 v0, 0x620c

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 673
    const/16 v0, 0x773c

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 674
    const/16 v0, 0x77ab

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 675
    const/16 v0, 0x7974

    const v1, 0x4c036

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->Add(II)V

    .line 677
    return-void
.end method

.method public static getSidMccMncList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/SidMccMnc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    const-string v1, "TelephonyPlusCode"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getSidMccMncList] getSidMccMncList = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->SidMccMncList_support:Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v0, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->SidMccMncList_support:Ljava/util/List;

    if-nez v0, :cond_0

    .line 154
    invoke-static {}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->InitSidMccMncList()V

    .line 157
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->SidMccMncList_support:Ljava/util/List;

    return-object v0

    .line 151
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
