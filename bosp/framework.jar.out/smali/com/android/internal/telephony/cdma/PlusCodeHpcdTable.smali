.class public Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;
.super Ljava/lang/Object;
.source "PlusCodeHpcdTable.java"


# static fields
.field static final a:Ljava/lang/Object;

.field private static b:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

.field private static c:Landroid/util/SparseIntArray;

.field private static final d:[Lcom/android/internal/telephony/cdma/MccIddNddSid;

.field private static final e:[Lcom/android/internal/telephony/cdma/MccSidLtmOff;

.field private static final f:[Lcom/android/internal/telephony/cdma/MccIddNddSid;

.field private static final g:[Lcom/android/internal/telephony/cdma/MccSidLtmOff;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, -0x8

    const/16 v12, 0x12

    const/16 v11, -0x14

    const/16 v10, -0xa

    const/16 v9, 0x136

    .line 44
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->c:Landroid/util/SparseIntArray;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->a:Ljava/lang/Object;

    .line 53
    const/16 v0, 0x8f

    new-array v7, v0, [Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/4 v8, 0x0

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0xe2

    const-string v2, "40"

    const/16 v3, 0x3e80

    const/16 v4, 0x3eff

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x1

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0xe6

    const-string v2, "420"

    const/16 v3, 0x3f00

    const/16 v4, 0x3f7f

    const-string v5, "00"

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x2

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0xe8

    const-string v2, "43"

    const/16 v3, 0x5980

    const/16 v4, 0x59ff

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x3

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0xee

    const-string v2, "45"

    const/16 v3, 0x5800

    const/16 v4, 0x580f

    const-string v5, "00"

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x4

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0xf0

    const-string v2, "46"

    const/16 v3, 0x5780

    const/16 v4, 0x5783

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x5

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0xf2

    const-string v2, "47"

    const/16 v3, 0x5700

    const/16 v4, 0x577f

    const-string v5, "00"

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x6

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0xf4

    const-string v2, "358"

    const/16 v3, 0x5f80

    const/16 v4, 0x5f83

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x7

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0xf7

    const-string v2, "371"

    const/16 v3, 0x2a20

    const/16 v4, 0x2a21

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x8

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0xf8

    const-string v2, "372"

    const/16 v3, 0x2a78

    const/16 v4, 0x2a7f

    const-string v5, "00"

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x9

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0xfa

    const-string v2, "7 "

    const/16 v3, 0x2c80

    const/16 v4, 0x2d22

    const-string v5, "810"

    const-string v6, "8"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0xa

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0xfa

    const-string v2, "7"

    const/16 v3, 0x2d24

    const/16 v4, 0x2d4f

    const-string v5, "810"

    const-string v6, "8"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0xb

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0xfa

    const-string v2, "7 "

    const/16 v3, 0x2d51

    const/16 v4, 0x2fff

    const-string v5, "810"

    const-string v6, "8"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0xc

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0xff

    const-string v2, "380"

    const/16 v3, 0x3e22

    const/16 v4, 0x3e31

    const-string v5, "810"

    const-string v6, "8"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0xd

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x101

    const-string v2, "375"

    const/16 v3, 0x3e52

    const/16 v4, 0x3e59

    const-string v5, "810"

    const-string v6, "8"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0xe

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x103

    const-string v2, "373"

    const/16 v3, 0x3e32

    const/16 v4, 0x3e41

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0xf

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x104

    const-string v2, "48"

    const/16 v3, 0x3f80

    const/16 v4, 0x3fff

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x10

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x10c

    const-string v2, "351"

    const/16 v3, 0x5f00

    const/16 v4, 0x5f1f

    const-string v5, "00"

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x11

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x110

    const-string v2, "353"

    const/16 v3, 0x5f40

    const/16 v4, 0x5f43

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x112

    const-string v2, "354"

    const/16 v3, 0x5f60

    const/16 v4, 0x5f7f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v12

    const/16 v8, 0x13

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x112

    const-string v2, "875"

    const/16 v3, 0x5f60

    const/16 v4, 0x5f7f

    const-string v5, "00"

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x14

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x11a

    const-string v2, "995"

    const/16 v3, 0x3e5a

    const/16 v4, 0x3e61

    const-string v5, "810"

    const-string v6, "8"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x15

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x11b

    const-string v2, "374"

    const/16 v3, 0x3e42

    const/16 v4, 0x3e49

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x16

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x11c

    const-string v2, "359"

    const/16 v3, 0x3ce0

    const/16 v4, 0x3cff

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x17

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x12e

    const-string v2, "1"

    const/16 v3, 0x4000

    const/16 v4, 0x47ff

    const-string v5, "011"

    const-string v6, "1"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x18

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const-string v2, "1"

    const/4 v3, 0x1

    const/16 v4, 0x87f

    const-string v5, "011"

    const-string v6, "1"

    move v1, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x19

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const-string v2, "1"

    const/16 v3, 0x900

    const/16 v4, 0x1dff

    const-string v5, "011"

    const-string v6, "1"

    move v1, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x1a

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x14a

    const-string v2, "1"

    const/4 v3, 0x1

    const/16 v4, 0x87f

    const-string v5, "011"

    const-string v6, "1"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x1b

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x14a

    const-string v2, "1"

    const/16 v3, 0x900

    const/16 v4, 0x1dff

    const-string v5, "011"

    const-string v6, "1"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x1c

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x14c

    const-string v2, "1"

    const/4 v3, 0x1

    const/16 v4, 0x87f

    const-string v5, "011"

    const-string v6, "1"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x1d

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x14c

    const-string v2, "1"

    const/16 v3, 0x900

    const/16 v4, 0x1dff

    const-string v5, "011"

    const-string v6, "1"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x1e

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x14e

    const-string v2, "52"

    const/16 v3, 0x6000

    const/16 v4, 0x61f3

    const-string v5, "00"

    const-string v6, "01"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x1f

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x14e

    const-string v2, "52"

    const/16 v3, 0x620c

    const/16 v4, 0x6224

    const-string v5, "00"

    const-string v6, "01"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x20

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x152

    const-string v2, "1"

    const/16 v3, 0x1ff0

    const/16 v4, 0x1fff

    const-string v5, "011"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x21

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x156

    const-string v2, "1"

    const/16 v3, 0x1fe0

    const/16 v4, 0x1fef

    const-string v5, "011"

    const-string v6, "1"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x22

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x15a

    const-string v2, "1"

    const/16 v3, 0x1fc0

    const/16 v4, 0x1fcf

    const-string v5, "011"

    const-string v6, "1"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x23

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x15c

    const-string v2, "1"

    const/16 v3, 0x1fb0

    const/16 v4, 0x1fbf

    const-string v5, "011"

    const-string v6, "1"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x24

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x15e

    const-string v2, "1"

    const/16 v3, 0x1fa0

    const/16 v4, 0x1faf

    const-string v5, "011"

    const-string v6, "1"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x25

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x164

    const-string v2, "1"

    const/16 v3, 0x1f60

    const/16 v4, 0x1f6f

    const-string v5, "011"

    const-string v6, "1"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x26

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x166

    const-string v2, "1"

    const/16 v3, 0x1f4a

    const/16 v4, 0x1f4b

    const-string v5, "011"

    const-string v6, "1"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x27

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x166

    const-string v2, "1"

    const/16 v3, 0x1f50

    const/16 v4, 0x1f5f

    const-string v5, "011"

    const-string v6, "1"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x28

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x16a

    const-string v2, "599"

    const/16 v3, 0x7aa0

    const/16 v4, 0x7aaf

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x29

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x16b

    const-string v2, "297"

    const/16 v3, 0x25b0

    const/16 v4, 0x25bf

    const-string v5, "00"

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x2a

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x16c

    const-string v2, "1"

    const/16 v3, 0x1f90

    const/16 v4, 0x1f9f

    const-string v5, "011"

    const-string v6, "1"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x2b

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x172

    const-string v2, "1"

    const/16 v3, 0x2280

    const/16 v4, 0x228f

    const-string v5, "011"

    const-string v6, "1"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x2c

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x174

    const-string v2, "509"

    const/16 v3, 0x7f60

    const/16 v4, 0x7f7f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x2d

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x176

    const-string v2, "1"

    const/16 v3, 0x2660

    const/16 v4, 0x267f

    const-string v5, "011"

    const-string v6, "1"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x2e

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x178

    const-string v2, "1"

    const/16 v3, 0x2a30

    const/16 v4, 0x2a3f

    const-string v5, "011"

    const-string v6, "1"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x2f

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x190

    const-string v2, "994"

    const/16 v3, 0x3e4a

    const/16 v4, 0x3e51

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x30

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x191

    const-string v2, "7"

    const/16 v3, 0x22e0

    const/16 v4, 0x22ef

    const-string v5, "810"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x31

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x194

    const-string v2, "91"

    const/16 v3, 0x3880

    const/16 v4, 0x39ff

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x32

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x19a

    const-string v2, "92"

    const/16 v3, 0x3a00

    const/16 v4, 0x3a7f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x33

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x19c

    const-string v2, "93"

    const/16 v3, 0x3a80

    const/16 v4, 0x3aff

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x34

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x19d

    const-string v2, "94"

    const/16 v3, 0x3b00

    const/16 v4, 0x3b7f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x35

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x19e

    const-string v2, "95"

    const/16 v3, 0x3b80

    const/16 v4, 0x3bff

    const-string v5, "00"

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x36

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1a2

    const-string v2, "964"

    const/16 v3, 0x3c60

    const/16 v4, 0x3c7f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x37

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1a3

    const-string v2, "965"

    const/16 v3, 0x2c30

    const/16 v4, 0x2c3f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x38

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1a4

    const-string v2, "966"

    const/16 v3, 0x3c80

    const/16 v4, 0x3c9f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x39

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1a5

    const-string v2, "967"

    const/16 v3, 0x2c40

    const/16 v4, 0x2c4f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x3a

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1a5

    const-string v2, "967"

    const/16 v3, 0x2c60

    const/16 v4, 0x2c6f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x3b

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1a6

    const-string v2, "968"

    const/16 v3, 0x2c50

    const/16 v4, 0x2c5f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x3c

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1a9

    const-string v2, "972"

    const/16 v3, 0x2100

    const/16 v4, 0x211f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x3d

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1ac

    const-string v2, "976"

    const/16 v3, 0x3ca0

    const/16 v4, 0x3cbf

    const-string v5, "002"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x3e

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1ad

    const-string v2, "977"

    const/16 v3, 0x3cc0

    const/16 v4, 0x3cdf

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x3f

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1b2

    const-string v2, "998"

    const/16 v3, 0x2a50

    const/16 v4, 0x2a67

    const-string v5, "810"

    const-string v6, "8"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x40

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1b2

    const-string v2, "998"

    const/16 v3, 0x2d23

    const/16 v4, 0x2d23

    const-string v5, "810"

    const-string v6, "8"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x41

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1b2

    const-string v2, "998"

    const/16 v3, 0x2d50

    const/16 v4, 0x2d50

    const-string v5, "810"

    const-string v6, "8"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x42

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1b4

    const-string v2, "992"

    const/16 v3, 0x2a68

    const/16 v4, 0x2a77

    const-string v5, "810"

    const-string v6, "8"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x43

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1b5

    const-string v2, "996"

    const/16 v3, 0x542e

    const/16 v4, 0x543e

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x44

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1b6

    const-string v2, "993"

    const/16 v3, 0x3e62

    const/16 v4, 0x3e69

    const-string v5, "810"

    const-string v6, "8"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x45

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1b8

    const-string v2, "81"

    const/16 v3, 0x3000

    const/16 v4, 0x33ff

    const-string v5, "010"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x46

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1c2

    const-string v2, "82"

    const/16 v3, 0x880

    const/16 v4, 0x8ff

    const-string v5, "00700"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x47

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1c4

    const-string v2, "84"

    const/16 v3, 0x3400

    const/16 v4, 0x347f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x48

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1c6

    const-string v2, "852"

    const/16 v3, 0x2990

    const/16 v4, 0x299f

    const-string v5, "001"

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x49

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1c7

    const-string v2, "853"

    const/16 v3, 0x2c20

    const/16 v4, 0x2c2f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x4a

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1c8

    const-string v2, "855"

    const/16 v3, 0x2b60

    const/16 v4, 0x2b7f

    const-string v5, "001"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x4b

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1c9

    const-string v2, "856"

    const/16 v3, 0x3480

    const/16 v4, 0x349f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x4c

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1cc

    const-string v2, "86"

    const/16 v3, 0x3500

    const/16 v4, 0x37ff

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x4d

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1cc

    const-string v2, "86"

    const/16 v3, 0x6400

    const/16 v4, 0x65ff

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x4e

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1d2

    const-string v2, "886"

    const/16 v3, 0x34c0

    const/16 v4, 0x34df

    const-string v5, "005"

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x4f

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1d6

    const-string v2, "880"

    const/16 v3, 0x34a0

    const/16 v4, 0x34bf

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x50

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1f6

    const-string v2, "60"

    const/16 v3, 0x2880

    const/16 v4, 0x28ff

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x51

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1f9

    const-string v2, "61"

    const/16 v3, 0x1e00

    const/16 v4, 0x1e7f

    const-string v5, "0011"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x52

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1f9

    const-string v2, "61"

    const/16 v3, 0x2080

    const/16 v4, 0x20ff

    const-string v5, "0011"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x53

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x1fe

    const-string v2, "62"

    const/16 v3, 0x2900

    const/16 v4, 0x297f

    const-string v5, "001"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x54

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x203

    const-string v2, "63"

    const/16 v3, 0x2980

    const/16 v4, 0x298f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x55

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x203

    const-string v2, "63"

    const/16 v3, 0x29a0

    const/16 v4, 0x29ff

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x56

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x208

    const-string v2, "66"

    const/16 v3, 0x2000

    const/16 v4, 0x201f

    const-string v5, "001"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x57

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x212

    const-string v2, "64"

    const/16 v3, 0x2180

    const/16 v4, 0x21ff

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x58

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x216

    const-string v2, "1"

    const/16 v3, 0x25d0

    const/16 v4, 0x25df

    const-string v5, "011"

    const-string v6, "1"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x59

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x217

    const-string v2, "1"

    const/16 v3, 0x25e0

    const/16 v4, 0x25ef

    const-string v5, "011"

    const-string v6, "1"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x5a

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x21e

    const-string v2, "679"

    const/16 v3, 0x2ad0

    const/16 v4, 0x2adf

    const-string v5, "00"

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x5b

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x220

    const-string v2, "1"

    const/16 v3, 0x1004

    const/16 v4, 0x1004

    const-string v5, "011"

    const-string v6, "1"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x5c

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x25a

    const-string v2, "20"

    const/16 v3, 0x2020

    const/16 v4, 0x203f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x5d

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x25b

    const-string v2, "213"

    const/16 v3, 0x2060

    const/16 v4, 0x207f

    const-string v5, "00"

    const-string v6, "7"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x5e

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x25c

    const-string v2, "212"

    const/16 v3, 0x2040

    const/16 v4, 0x205f

    const-string v5, "00"

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x5f

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x25f

    const-string v2, "220"

    const/16 v3, 0x2160

    const/16 v4, 0x217f

    const-string v5, "00"

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x60

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x260

    const-string v2, "221"

    const/16 v3, 0x2200

    const/16 v4, 0x221f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x61

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x261

    const-string v2, "222"

    const/16 v3, 0x2220

    const/16 v4, 0x223f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x62

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x262

    const-string v2, "223"

    const/16 v3, 0x2240

    const/16 v4, 0x225f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x63

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x264

    const-string v2, "225"

    const/16 v3, 0x2300

    const/16 v4, 0x231f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x64

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x266

    const-string v2, "227"

    const/16 v3, 0x2340

    const/16 v4, 0x235f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x65

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x267

    const-string v2, "228"

    const/16 v3, 0x2360

    const/16 v4, 0x237f

    const-string v5, "00"

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x66

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x268

    const-string v2, "229"

    const/16 v3, 0x2380

    const/16 v4, 0x239f

    const-string v5, "00"

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x67

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x269

    const-string v2, "230"

    const/16 v3, 0x23a0

    const/16 v4, 0x23bf

    const-string v5, "020"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x68

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x26b

    const-string v2, "232"

    const/16 v3, 0x23e0

    const/16 v4, 0x23ff

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x69

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x26c

    const-string v2, "233"

    const/16 v3, 0x2400

    const/16 v4, 0x241f

    const-string v5, "00"

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x6a

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x26d

    const-string v2, "234"

    const/16 v3, 0x2420

    const/16 v4, 0x243f

    const-string v5, "009"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x6b

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x270

    const-string v2, "237"

    const/16 v3, 0x2480

    const/16 v4, 0x249f

    const-string v5, "00"

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x6c

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x276

    const-string v2, "243"

    const/16 v3, 0x2500

    const/16 v4, 0x251f

    const-string v5, "00"

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x6d

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x277

    const-string v2, "244"

    const/16 v3, 0x2520

    const/16 v4, 0x253f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x6e

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x27a

    const-string v2, "249"

    const/16 v3, 0x2560

    const/16 v4, 0x257f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x6f

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x27a

    const-string v2, "258"

    const/16 v3, 0x2700

    const/16 v4, 0x271f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x70

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x27b

    const-string v2, "250"

    const/16 v3, 0x2600

    const/16 v4, 0x261f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x71

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x27c

    const-string v2, "251"

    const/16 v3, 0x2620

    const/16 v4, 0x263f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x72

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x27f

    const-string v2, "254"

    const/16 v3, 0x2680

    const/16 v4, 0x269f

    const-string v5, "000"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x73

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x280

    const-string v2, "255"

    const/16 v3, 0x26a0

    const/16 v4, 0x26bf

    const-string v5, "000"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x74

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x281

    const-string v2, "256"

    const/16 v3, 0x26c0

    const/16 v4, 0x26df

    const-string v5, "000"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x75

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x282

    const-string v2, "257"

    const/16 v3, 0x26e0

    const/16 v4, 0x26ff

    const-string v5, "00"

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x76

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x285

    const-string v2, "260"

    const/16 v3, 0x2720

    const/16 v4, 0x273f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x77

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x286

    const-string v2, "261"

    const/16 v3, 0x2740

    const/16 v4, 0x275f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x78

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x288

    const-string v2, "263"

    const/16 v3, 0x2760

    const/16 v4, 0x277f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x79

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x289

    const-string v2, "264"

    const/16 v3, 0x2780

    const/16 v4, 0x279f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x7a

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x28c

    const-string v2, "267"

    const/16 v3, 0x27c0

    const/16 v4, 0x27df

    const-string v5, "00"

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x7b

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x28f

    const-string v2, "27"

    const/16 v3, 0x2800

    const/16 v4, 0x287f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x7c

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x2be

    const-string v2, "501"

    const/16 v3, 0x7f80

    const/16 v4, 0x7f89

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x7d

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x2c0

    const-string v2, "502"

    const/16 v3, 0x7fa0

    const/16 v4, 0x7fbf

    const-string v5, "00"

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x7e

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x2c2

    const-string v2, "503"

    const/16 v3, 0x7fc0

    const/16 v4, 0x7fdf

    const-string v5, "00"

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x7f

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x2c4

    const-string v2, "504"

    const/16 v3, 0x7fe0

    const/16 v4, 0x7fff

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x80

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x2c6

    const-string v2, "505"

    const/16 v3, 0x7f00

    const/16 v4, 0x7f1f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x81

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x2ca

    const-string v2, "507"

    const/16 v3, 0x7f40

    const/16 v4, 0x7f5f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x82

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x2cc

    const-string v2, "51"

    const/16 v3, 0x7e80

    const/16 v4, 0x7eff

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x83

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x2d2

    const-string v2, "54"

    const/16 v3, 0x7d80

    const/16 v4, 0x7dff

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x84

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x2d4

    const-string v2, "55"

    const/16 v3, 0x7c80

    const/16 v4, 0x7d7f

    const-string v5, "0015"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x85

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x2da

    const-string v2, "56"

    const/16 v3, 0x7c00

    const/16 v4, 0x7c0a

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x86

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x2da

    const-string v2, "56"

    const/16 v3, 0x7c41

    const/16 v4, 0x7c4c

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x87

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x2da

    const-string v2, "56"

    const/16 v3, 0x7c61

    const/16 v4, 0x7c6e

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x88

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x2dc

    const-string v2, "57"

    const/16 v3, 0x7b80

    const/16 v4, 0x7bff

    const-string v5, "009"

    const-string v6, "03"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x89

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x2de

    const-string v2, "58"

    const/16 v3, 0x7b00

    const/16 v4, 0x7b7f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x8a

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x2e4

    const-string v2, "593"

    const/16 v3, 0x7a40

    const/16 v4, 0x7a5f

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x8b

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x2ea

    const-string v2, "597"

    const/16 v3, 0x79a0

    const/16 v4, 0x79bf

    const-string v5, "00"

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x8c

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x2ec

    const-string v2, "598"

    const/16 v3, 0x79c0

    const/16 v4, 0x79df

    const-string v5, "00"

    const-string v6, "0"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x8d

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x385

    const-string v2, "875"

    const/16 v3, 0x571c

    const/16 v4, 0x571c

    const-string v5, "00"

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    const/16 v8, 0x8e

    new-instance v0, Lcom/android/internal/telephony/cdma/MccIddNddSid;

    const/16 v1, 0x386

    const-string v2, "1"

    const/16 v3, 0x1051

    const/16 v4, 0x1051

    const-string v5, "011"

    const-string v6, "1"

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    sput-object v7, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->d:[Lcom/android/internal/telephony/cdma/MccIddNddSid;

    .line 200
    const/16 v0, 0x10a

    new-array v0, v0, [Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/4 v3, 0x1

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

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

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

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

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

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

    const/4 v3, 0x3

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/4 v4, 0x3

    const/16 v5, 0x8

    const/4 v6, -0x4

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x17

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x17

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1b

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x1b

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1d

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x1d

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x21

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x21

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2b

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x2b

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v2, 0x2f

    invoke-direct {v1, v9, v2, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v1, v0, v12

    const/16 v1, 0x13

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x2f

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x3d

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x3d

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x41

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x41

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x43

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x43

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x45

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x45

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x47

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x47

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x83

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x83

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x101

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x101

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x103

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x103

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x105

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x105

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x107

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x107

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x140

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x140

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x142

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x142

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x146

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x146

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x148

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x148

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x14a

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x14a

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x183

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x183

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x185

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x185

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x187

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x187

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x18b

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x18b

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x240

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x240

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x246

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x246

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2bf

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x2bf

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2e3

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x2e3

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x4c2

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x4c2

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x4c4

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x4c4

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x4c6

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x4c6

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x502

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x502

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x521

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x521

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x523

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x523

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x531

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x531

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x581

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x581

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x5a3

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x5a3

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x5f1

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x5f1

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x621

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x621

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x62d

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x62d

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x662

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x662

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x682

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x682

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x684

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2d4

    const/16 v4, 0x684

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v13, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x6f

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x26d

    const/16 v4, 0x6f

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0xd3

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x26d

    const/16 v4, 0xd3

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x137

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x26d

    const/16 v4, 0x137

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x4d3

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x203

    const/16 v4, 0x4d3

    const/16 v5, 0x10

    const/16 v6, 0x10

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x76d

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0xfa

    const/16 v4, 0x76d

    const/4 v5, 0x4

    const/4 v6, 0x6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x457

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x457

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x458

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x458

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x459

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x459

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x6a4

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x6a4

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x881

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x881

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x883

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x883

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x885

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x885

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x887

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x887

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x889

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x889

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x88b

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x88b

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x88d

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x88d

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x88f

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x88f

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x891

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x891

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x893

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x893

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x895

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x895

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x897

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x897

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x899

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x899

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x89b

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x89b

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x89d

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x89d

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x89f

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x91

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x89f

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8a1

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x8a1

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8a3

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x8a3

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x96

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8a5

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x97

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x8a5

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x98

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8a7

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x99

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x8a7

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8a9

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x8a9

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8ab

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x8ab

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8ad

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x8ad

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8af

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x8af

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8b1

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x8b1

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8b3

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x8b3

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8b5

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x8b5

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8b7

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x8b7

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8b9

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xab

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x8b9

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xac

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8bb

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xad

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x8bb

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xae

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8bd

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x8bd

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8bf

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x8bf

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8c1

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x8c1

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8c3

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x8c3

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8fd

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x8fd

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x8ff

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x8ff

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xba

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x941

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x941

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x942

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x942

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x943

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x943

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1c2

    const/16 v4, 0x8ae

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x194

    const/16 v4, 0x8ae

    const/16 v5, 0xb

    const/16 v6, 0xb

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x220

    const/16 v4, 0x1004

    const/16 v5, -0x16

    const/16 v6, -0x16

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2de

    const/16 v4, 0x1004

    const/16 v5, -0x9

    const/16 v6, -0x9

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1018

    const/16 v4, -0xc

    const/16 v5, -0xc

    invoke-direct {v2, v9, v3, v4, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2de

    const/16 v4, 0x1018

    const/16 v5, -0x9

    const/16 v6, -0x9

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1022

    const/16 v4, 0x14

    const/16 v5, 0x14

    invoke-direct {v2, v9, v3, v4, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2de

    const/16 v4, 0x1022

    const/16 v5, -0x9

    const/16 v6, -0x9

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x102c

    const/16 v4, -0xc

    const/16 v5, -0xc

    invoke-direct {v2, v9, v3, v4, v5}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2de

    const/16 v4, 0x102c

    const/16 v5, -0x9

    const/16 v6, -0x9

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xca

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x208

    const/16 v4, 0x1ffd

    const/16 v5, 0xe

    const/16 v6, 0xe

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x15e

    const/16 v4, 0x1ffd

    invoke-direct {v2, v3, v4, v13, v13}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x25b

    const/16 v4, 0x2066

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2066

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xce

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1f9

    const/16 v4, 0x20a6

    const/16 v5, 0x10

    const/16 v6, 0x14

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x20a6

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1f9

    const/16 v4, 0x20a8

    const/16 v5, 0x10

    const/16 v6, 0x14

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x20a8

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x212

    const/16 v4, 0x21a8

    const/16 v5, 0x18

    const/16 v6, 0x18

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x21a8

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x271

    const/16 v4, 0x229c

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x229c

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x271

    const/16 v4, 0x229d

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x229d

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x271

    const/16 v4, 0x229f

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x229f

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xda

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x287

    const/16 v4, 0x22f6

    const/16 v5, 0x8

    const/16 v6, 0x8

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x22f6

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x287

    const/16 v4, 0x22f8

    const/16 v5, 0x8

    const/16 v6, 0x8

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x22f8

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xde

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x264

    const/16 v4, 0x2300

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2300

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x264

    const/16 v4, 0x2302

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2302

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x267

    const/16 v4, 0x2378

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2378

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x26b

    const/16 v4, 0x23fc

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x23fc

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x26c

    const/16 v4, 0x241c

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x241c

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x26c

    const/16 v4, 0x24d2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x24d2

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xea

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x26f

    const/16 v4, 0x246a

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x246a

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xec

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x273

    const/16 v4, 0x24b2

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xed

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x24b2

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xee

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x275

    const/16 v4, 0x2510

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xef

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2510

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x278

    const/16 v4, 0x255a

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x255a

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x28d

    const/16 v4, 0x25a8

    const/4 v5, 0x4

    const/4 v6, 0x4

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x25a8

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x28d

    const/16 v4, 0x25aa

    const/4 v5, 0x4

    const/4 v6, 0x4

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x25aa

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x28d

    const/16 v4, 0x25ac

    const/4 v5, 0x4

    const/4 v6, 0x4

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x25ac

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x27c

    const/16 v4, 0x263c

    const/4 v5, 0x6

    const/4 v6, 0x6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x263c

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x27c

    const/16 v4, 0x263e

    const/4 v5, 0x6

    const/4 v6, 0x6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x263e

    invoke-direct {v2, v9, v3, v11, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1b8

    const/16 v4, 0x30ad

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1d6

    const/16 v4, 0x30ad

    const/16 v5, 0xc

    const/16 v6, 0xc

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1b8

    const/16 v4, 0x30af

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xff

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1d6

    const/16 v4, 0x30af

    const/16 v5, 0xc

    const/16 v6, 0xc

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x100

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1b8

    const/16 v4, 0x30b0

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x101

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1d6

    const/16 v4, 0x30b0

    const/16 v5, 0xc

    const/16 v6, 0xc

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x102

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1b8

    const/16 v4, 0x3111

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x103

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x20d

    const/16 v4, 0x3111

    const/16 v5, 0x10

    const/16 v6, 0x10

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x104

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x1b8

    const/16 v4, 0x32b2

    invoke-direct {v2, v3, v4, v12, v12}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x105

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x16b

    const/16 v4, 0x32b2

    invoke-direct {v2, v3, v4, v13, v13}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x106

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x19a

    const/16 v4, 0x3a02

    const/16 v5, 0xa

    const/16 v6, 0xa

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x107

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x194

    const/16 v4, 0x3a02

    const/16 v5, 0xb

    const/16 v6, 0xb

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x108

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x2c4

    const/16 v4, 0x7ff0

    const/16 v5, -0xc

    const/16 v6, -0xc

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x109

    new-instance v2, Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    const/16 v3, 0x16c

    const/16 v4, 0x7ff0

    invoke-direct {v2, v3, v4, v10, v10}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;-><init>(IIII)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->e:[Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    .line 365
    sget-object v0, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->MccIddNddSidMap_support:[Lcom/android/internal/telephony/cdma/MccIddNddSid;

    sput-object v0, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->f:[Lcom/android/internal/telephony/cdma/MccIddNddSid;

    .line 367
    sget-object v0, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->MccSidLtmOffMap_support:[Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    sput-object v0, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->g:[Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    return-void
.end method

.method public static getCcFromMINSTableBySid(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/MccIddNddSid;
    .locals 10
    .parameter "sSid"

    .prologue
    const/4 v2, 0x0

    .line 485
    const-string v7, "CDMA-PlusCodeHpcdTable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " [getCcFromMINSTableBySid] sid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x5

    if-le v7, v8, :cond_2

    .line 487
    :cond_0
    const-string v7, "CDMA-PlusCodeHpcdTable"

    const-string v8, "[getCcFromMINSTableBySid] please check the param "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_1
    :goto_0
    return-object v2

    .line 493
    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 498
    .local v5, sid:I
    if-ltz v5, :cond_1

    .line 500
    const/4 v4, 0x0

    .line 501
    .local v4, mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;
    const/4 v2, 0x0

    .line 503
    .local v2, findMccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;
    const/4 v0, -0x1

    .line 504
    .local v0, Find:I
    sget-object v7, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->f:[Lcom/android/internal/telephony/cdma/MccIddNddSid;

    array-length v6, v7

    .line 505
    .local v6, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v6, :cond_3

    .line 506
    sget-object v7, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->f:[Lcom/android/internal/telephony/cdma/MccIddNddSid;

    aget-object v4, v7, v3

    .line 507
    iget v7, v4, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMax:I

    if-gt v5, v7, :cond_4

    iget v7, v4, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMin:I

    if-lt v5, v7, :cond_4

    .line 508
    move-object v2, v4

    .line 513
    :cond_3
    const-string v7, "CDMA-PlusCodeHpcdTable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " getCcFromMINSTableBySidAndLtm findMccIddNddSid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 494
    .end local v0           #Find:I
    .end local v2           #findMccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;
    .end local v3           #i:I
    .end local v4           #mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;
    .end local v5           #sid:I
    .end local v6           #size:I
    :catch_0
    move-exception v1

    .line 495
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v7, "CDMA-PlusCodeHpcdTable"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 505
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #Find:I
    .restart local v2       #findMccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;
    .restart local v3       #i:I
    .restart local v4       #mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;
    .restart local v5       #sid:I
    .restart local v6       #size:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static getCcFromTableByMcc(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/MccIddNddSid;
    .locals 13
    .parameter "sMcc"

    .prologue
    const/4 v9, 0x0

    .line 384
    const-string v10, "CDMA-PlusCodeHpcdTable"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " getCcFromTableByMcc mcc = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 386
    :cond_0
    const-string v10, "CDMA-PlusCodeHpcdTable"

    const-string v11, "[getCcFromTableByMcc] please check the param "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 438
    :goto_0
    return-object v6

    .line 392
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 397
    .local v5, mcc:I
    sget-object v10, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->f:[Lcom/android/internal/telephony/cdma/MccIddNddSid;

    array-length v7, v10

    .line 398
    .local v7, size:I
    add-int/lit8 v2, v7, -0x1

    .local v2, high:I
    const/4 v4, 0x0

    .line 400
    .local v4, low:I
    const/4 v6, 0x0

    .line 414
    .local v6, mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;
    const-string v10, "CDMA-PlusCodeHpcdTable"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " getCcFromTableByMcc size = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v1, -0x1

    .line 416
    .local v1, find:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v7, :cond_2

    .line 417
    sget-object v10, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->f:[Lcom/android/internal/telephony/cdma/MccIddNddSid;

    aget-object v6, v10, v3

    .line 418
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/MccIddNddSid;->getMcc()I

    move-result v8

    .line 419
    .local v8, tempMcc:I
    const-string v10, "CDMA-PlusCodeHpcdTable"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " getCcFromTableByMcc tempMcc = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    if-ne v8, v5, :cond_3

    .line 421
    move v1, v3

    .line 426
    .end local v8           #tempMcc:I
    :cond_2
    const-string v10, "CDMA-PlusCodeHpcdTable"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " getCcFromTableByMcc find = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v10, -0x1

    if-le v1, v10, :cond_4

    if-ge v1, v7, :cond_4

    .line 428
    sget-object v9, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->f:[Lcom/android/internal/telephony/cdma/MccIddNddSid;

    aget-object v6, v9, v1

    .line 429
    const-string v9, "CDMA-PlusCodeHpcdTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Now find Mcc = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Mcc:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Mcc = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Cc:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", SidMin = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMin:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", SidMax = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMax:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Idd = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Idd:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Ndd = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Ndd:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 393
    .end local v1           #find:I
    .end local v2           #high:I
    .end local v3           #i:I
    .end local v4           #low:I
    .end local v5           #mcc:I
    .end local v6           #mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;
    .end local v7           #size:I
    :catch_0
    move-exception v0

    .line 394
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v10, "CDMA-PlusCodeHpcdTable"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 395
    goto/16 :goto_0

    .line 416
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #find:I
    .restart local v2       #high:I
    .restart local v3       #i:I
    .restart local v4       #low:I
    .restart local v5       #mcc:I
    .restart local v6       #mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;
    .restart local v7       #size:I
    .restart local v8       #tempMcc:I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 437
    .end local v8           #tempMcc:I
    :cond_4
    const-string v10, "CDMA-PlusCodeHpcdTable"

    const-string v11, "can\'t find one that match the Mcc"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 438
    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;
    .locals 2

    .prologue
    .line 370
    sget-object v1, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 371
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->b:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->b:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    .line 374
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    sget-object v0, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->b:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    return-object v0

    .line 374
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getMccFromConflictTableBySid(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .parameter "sSid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 446
    const-string v7, "CDMA-PlusCodeHpcdTable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " [getMccFromConflictTableBySid] sid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x5

    if-le v7, v8, :cond_2

    .line 448
    :cond_0
    const-string v7, "CDMA-PlusCodeHpcdTable"

    const-string v8, "[getMccFromConflictTableBySid] please check the param "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_1
    :goto_0
    return-object v5

    .line 455
    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 461
    .local v6, sid:I
    if-ltz v6, :cond_1

    .line 463
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v5, mcc_arrays:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 465
    .local v3, mccSidLtmOff:Lcom/android/internal/telephony/cdma/MccSidLtmOff;
    sget-object v7, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->g:[Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    array-length v4, v7

    .line 466
    .local v4, mccSidMapSize:I
    const/4 v2, 0x0

    .line 467
    .local v2, index:I
    const-string v7, "CDMA-PlusCodeHpcdTable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " [getMccFromConflictTableBySid] mccSidMapSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 469
    sget-object v7, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->g:[Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    aget-object v3, v7, v1

    .line 470
    if-eqz v3, :cond_3

    iget v7, v3, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->Sid:I

    if-ne v7, v6, :cond_3

    .line 472
    iget v7, v3, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->Mcc:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    const-string v7, "CDMA-PlusCodeHpcdTable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mccSidLtmOff  Mcc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->Mcc:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Sid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->Sid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", LtmOffMin = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->LtmOffMin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", LtmOffMax = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->LtmOffMax:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 456
    .end local v1           #i:I
    .end local v2           #index:I
    .end local v3           #mccSidLtmOff:Lcom/android/internal/telephony/cdma/MccSidLtmOff;
    .end local v4           #mccSidMapSize:I
    .end local v5           #mcc_arrays:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #sid:I
    :catch_0
    move-exception v0

    .line 457
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v7, "CDMA-PlusCodeHpcdTable"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getMccFromConflictTableBySidLtmOff(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "sSid"
    .parameter "sLtm_off"

    .prologue
    const/4 v0, 0x0

    .line 582
    const-string v9, "CDMA-PlusCodeHpcdTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " [getMccFromConflictTableBySidLtmOff] sSid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", sLtm_off = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x5

    if-gt v9, v10, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    .line 586
    :cond_0
    const-string v9, "CDMA-PlusCodeHpcdTable"

    const-string v10, "[getMccFromConflictTableBySidLtmOff] please check the param "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_1
    :goto_0
    return-object v0

    .line 593
    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 598
    .local v8, sid:I
    if-ltz v8, :cond_1

    .line 602
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 608
    .local v3, ltm_off:I
    const-string v9, "CDMA-PlusCodeHpcdTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " [getMccFromConflictTableBySidLtmOff] sid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    sget-object v9, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->g:[Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    array-length v6, v9

    .line 611
    .local v6, mccSidMapSize:I
    const-string v9, "CDMA-PlusCodeHpcdTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " [getMccFromConflictTableBySidLtmOff] mccSidMapSize = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const/4 v5, 0x0

    .line 614
    .local v5, mccSidLtmOff:Lcom/android/internal/telephony/cdma/MccSidLtmOff;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v6, :cond_1

    .line 615
    sget-object v9, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->g:[Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    aget-object v5, v9, v2

    .line 617
    iget v9, v5, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->LtmOffMax:I

    mul-int/lit8 v4, v9, 0x2

    .line 618
    .local v4, max:I
    iget v9, v5, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->LtmOffMin:I

    mul-int/lit8 v7, v9, 0x2

    .line 620
    .local v7, min:I
    const-string v9, "CDMA-PlusCodeHpcdTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getMccFromConflictTableBySidLtmOff] mccSidLtmOff.Sid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->Sid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", sid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ltm_off = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", max = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", min = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    if-eqz v5, :cond_3

    iget v9, v5, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->Sid:I

    if-ne v9, v8, :cond_3

    if-gt v3, v4, :cond_3

    if-lt v3, v7, :cond_3

    .line 627
    iget v9, v5, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->Mcc:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, Mcc:Ljava/lang/String;
    const-string v9, "CDMA-PlusCodeHpcdTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getMccFromConflictTableBySidLtmOff] Mcc = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 594
    .end local v0           #Mcc:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #ltm_off:I
    .end local v4           #max:I
    .end local v5           #mccSidLtmOff:Lcom/android/internal/telephony/cdma/MccSidLtmOff;
    .end local v6           #mccSidMapSize:I
    .end local v7           #min:I
    .end local v8           #sid:I
    :catch_0
    move-exception v1

    .line 595
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v9, "CDMA-PlusCodeHpcdTable"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 603
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v8       #sid:I
    :catch_1
    move-exception v1

    .line 604
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const-string v9, "CDMA-PlusCodeHpcdTable"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 614
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #i:I
    .restart local v3       #ltm_off:I
    .restart local v4       #max:I
    .restart local v5       #mccSidLtmOff:Lcom/android/internal/telephony/cdma/MccSidLtmOff;
    .restart local v6       #mccSidMapSize:I
    .restart local v7       #min:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method public static getMccFromMINSTableBySid(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "sSid"

    .prologue
    const/4 v0, 0x0

    .line 639
    const-string v6, "CDMA-PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " [getMccFromMINSTableBySid] sid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-le v6, v7, :cond_2

    .line 641
    :cond_0
    const-string v6, "CDMA-PlusCodeHpcdTable"

    const-string v7, "[getMccFromMINSTableBySid] please check the param "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_1
    :goto_0
    return-object v0

    .line 647
    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 652
    .local v4, sid:I
    if-ltz v4, :cond_1

    .line 654
    const/4 v3, 0x0

    .line 656
    .local v3, mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;
    sget-object v6, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->f:[Lcom/android/internal/telephony/cdma/MccIddNddSid;

    array-length v5, v6

    .line 657
    .local v5, size:I
    const-string v6, "CDMA-PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " [getMccFromMINSTableBySid] size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 660
    sget-object v6, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->f:[Lcom/android/internal/telephony/cdma/MccIddNddSid;

    aget-object v3, v6, v2

    .line 662
    const-string v6, "CDMA-PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " [getMccFromMINSTableBySid] sid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mccIddNddSid.SidMin = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMin:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mccIddNddSid.SidMax = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMax:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget v6, v3, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMin:I

    if-lt v4, v6, :cond_3

    iget v6, v3, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMax:I

    if-gt v4, v6, :cond_3

    .line 667
    iget v6, v3, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Mcc:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, Mcc:Ljava/lang/String;
    const-string v6, "CDMA-PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[queryMccFromConflictTableBySid] Mcc = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 648
    .end local v0           #Mcc:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;
    .end local v4           #sid:I
    .end local v5           #size:I
    :catch_0
    move-exception v1

    .line 649
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v6, "CDMA-PlusCodeHpcdTable"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 659
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #i:I
    .restart local v3       #mccIddNddSid:Lcom/android/internal/telephony/cdma/MccIddNddSid;
    .restart local v4       #sid:I
    .restart local v5       #size:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getMccMncFromSidMccMncListBySid(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "sSid"

    .prologue
    const/4 v1, 0x0

    .line 680
    const-string v9, "CDMA-PlusCodeHpcdTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " [getMccMncFromSidMccMncListBySid] sid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x5

    if-le v9, v10, :cond_2

    .line 682
    :cond_0
    const-string v9, "CDMA-PlusCodeHpcdTable"

    const-string v10, "[getMccMncFromSidMccMncListBySid] please check the param "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_1
    :goto_0
    return-object v1

    .line 688
    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 693
    .local v8, sid:I
    if-ltz v8, :cond_1

    .line 695
    invoke-static {}, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->getSidMccMncList()Ljava/util/List;

    move-result-object v5

    .line 697
    .local v5, mSidMccMncList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/SidMccMnc;>;"
    const/4 v4, 0x0

    .line 699
    .local v4, mSidMccMnc:Lcom/android/internal/telephony/cdma/SidMccMnc;
    const/4 v3, 0x0

    .line 700
    .local v3, left:I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .line 702
    .local v7, right:I
    const/4 v0, 0x0

    .line 704
    .local v0, MccMnc:I
    :goto_1
    if-gt v3, v7, :cond_5

    .line 705
    add-int v9, v3, v7

    div-int/lit8 v6, v9, 0x2

    .line 707
    .local v6, mid:I
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #mSidMccMnc:Lcom/android/internal/telephony/cdma/SidMccMnc;
    check-cast v4, Lcom/android/internal/telephony/cdma/SidMccMnc;

    .line 709
    .restart local v4       #mSidMccMnc:Lcom/android/internal/telephony/cdma/SidMccMnc;
    iget v9, v4, Lcom/android/internal/telephony/cdma/SidMccMnc;->Sid:I

    if-ge v8, v9, :cond_3

    .line 710
    add-int/lit8 v7, v6, -0x1

    goto :goto_1

    .line 689
    .end local v0           #MccMnc:I
    .end local v3           #left:I
    .end local v4           #mSidMccMnc:Lcom/android/internal/telephony/cdma/SidMccMnc;
    .end local v5           #mSidMccMncList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/SidMccMnc;>;"
    .end local v6           #mid:I
    .end local v7           #right:I
    .end local v8           #sid:I
    :catch_0
    move-exception v2

    .line 690
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v9, "CDMA-PlusCodeHpcdTable"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 711
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #MccMnc:I
    .restart local v3       #left:I
    .restart local v4       #mSidMccMnc:Lcom/android/internal/telephony/cdma/SidMccMnc;
    .restart local v5       #mSidMccMncList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/SidMccMnc;>;"
    .restart local v6       #mid:I
    .restart local v7       #right:I
    .restart local v8       #sid:I
    :cond_3
    iget v9, v4, Lcom/android/internal/telephony/cdma/SidMccMnc;->Sid:I

    if-le v8, v9, :cond_4

    .line 712
    add-int/lit8 v3, v6, 0x1

    goto :goto_1

    .line 714
    :cond_4
    iget v0, v4, Lcom/android/internal/telephony/cdma/SidMccMnc;->MccMnc:I

    .line 719
    .end local v6           #mid:I
    :cond_5
    if-eqz v0, :cond_1

    .line 720
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 722
    .local v1, MccMncStr:Ljava/lang/String;
    const-string v9, "CDMA-PlusCodeHpcdTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getMccMncFromSidMccMncListBySid] MccMncStr = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCcFromMINSTableByLTM(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .parameter
    .parameter "sLtm_off"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 520
    .local p1, mcc_array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "CDMA-PlusCodeHpcdTable"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " getCcFromMINSTableByLTM sLtm_off = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_1

    .line 522
    :cond_0
    const-string v13, "CDMA-PlusCodeHpcdTable"

    const-string v14, "[getCcFromMINSTableByLTM] please check the param "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v1, 0x0

    .line 578
    :goto_0
    return-object v1

    .line 526
    :cond_1
    const/4 v1, 0x0

    .line 530
    .local v1, FindMcc:Ljava/lang/String;
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 536
    .local v7, ltm_off:I
    const-string v13, "CDMA-PlusCodeHpcdTable"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[getCcFromMINSTableByLTM]  ltm_off =  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 539
    .local v2, FindOutMccSize:I
    const/4 v13, 0x1

    if-le v2, v13, :cond_4

    sget-object v13, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->g:[Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    if-eqz v13, :cond_4

    .line 540
    sget-object v13, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->g:[Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    array-length v11, v13

    .line 542
    .local v11, mccSidMapSize:I
    const-string v13, "CDMA-PlusCodeHpcdTable"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " Conflict FindOutMccSize = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v10, 0x0

    .line 546
    .local v10, mccSidLtmOff:Lcom/android/internal/telephony/cdma/MccSidLtmOff;
    const/4 v4, -0x1

    .line 547
    .local v4, find:I
    const/4 v9, -0x1

    .line 548
    .local v9, mcc:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_5

    .line 550
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    .line 556
    const-string v13, "CDMA-PlusCodeHpcdTable"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " Conflict mcc = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",index = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    if-ge v6, v11, :cond_2

    .line 558
    sget-object v13, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->g:[Lcom/android/internal/telephony/cdma/MccSidLtmOff;

    aget-object v10, v13, v6

    .line 559
    iget v13, v10, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->Mcc:I

    if-ne v13, v9, :cond_3

    .line 561
    iget v13, v10, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->LtmOffMax:I

    mul-int/lit8 v8, v13, 0x2

    .line 562
    .local v8, max:I
    iget v13, v10, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->LtmOffMin:I

    mul-int/lit8 v12, v13, 0x2

    .line 564
    .local v12, min:I
    const-string v13, "CDMA-PlusCodeHpcdTable"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "mccSidLtmOff LtmOffMin = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v10, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->LtmOffMin:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", LtmOffMax = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v10, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->LtmOffMax:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    if-gt v7, v8, :cond_3

    if-lt v7, v12, :cond_3

    .line 567
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #FindMcc:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 548
    .end local v8           #max:I
    .end local v12           #min:I
    .restart local v1       #FindMcc:Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 531
    .end local v2           #FindOutMccSize:I
    .end local v4           #find:I
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v7           #ltm_off:I
    .end local v9           #mcc:I
    .end local v10           #mccSidLtmOff:Lcom/android/internal/telephony/cdma/MccSidLtmOff;
    .end local v11           #mccSidMapSize:I
    :catch_0
    move-exception v3

    .line 532
    .local v3, e:Ljava/lang/NumberFormatException;
    const-string v13, "CDMA-PlusCodeHpcdTable"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 551
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #FindOutMccSize:I
    .restart local v4       #find:I
    .restart local v5       #i:I
    .restart local v7       #ltm_off:I
    .restart local v9       #mcc:I
    .restart local v10       #mccSidLtmOff:Lcom/android/internal/telephony/cdma/MccSidLtmOff;
    .restart local v11       #mccSidMapSize:I
    :catch_1
    move-exception v3

    .line 552
    .restart local v3       #e:Ljava/lang/NumberFormatException;
    const-string v13, "CDMA-PlusCodeHpcdTable"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 557
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .restart local v6       #j:I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 574
    .end local v4           #find:I
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v9           #mcc:I
    .end local v10           #mccSidLtmOff:Lcom/android/internal/telephony/cdma/MccSidLtmOff;
    .end local v11           #mccSidMapSize:I
    :cond_4
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #FindMcc:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 577
    .restart local v1       #FindMcc:Ljava/lang/String;
    :cond_5
    const-string v13, "CDMA-PlusCodeHpcdTable"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "find one that match the ltm_off mcc = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
