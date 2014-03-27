.class public Lyi/util/LunarCalendarTranslator;
.super Ljava/lang/Object;
.source "LunarCalendarTranslator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/util/LunarCalendarTranslator$OutOfLunarRangeException;
    }
.end annotation


# static fields
.field public static final DAY:I = 0x2

.field private static final FIELD_COUNT:I = 0x3

.field public static final MONTH:I = 0x1

.field private static TAG:Ljava/lang/String;

.field public static final YEAR:I

.field private static final sLunarInfo:[J

.field private static final sSolarLunarOffsetTable:[C

.field static final sTermC20:[F

.field static final sTermC21:[F


# instance fields
.field protected mFields:[I

.field protected mIsLeap:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x96

    const/16 v1, 0x18

    .line 6
    const-string v0, "LunarCalendarTranslator"

    sput-object v0, Lyi/util/LunarCalendarTranslator;->TAG:Ljava/lang/String;

    .line 19
    new-array v0, v2, [J

    fill-array-data v0, :array_0

    sput-object v0, Lyi/util/LunarCalendarTranslator;->sLunarInfo:[J

    .line 37
    new-array v0, v2, [C

    fill-array-data v0, :array_1

    sput-object v0, Lyi/util/LunarCalendarTranslator;->sSolarLunarOffsetTable:[C

    .line 60
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lyi/util/LunarCalendarTranslator;->sTermC20:[F

    .line 67
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lyi/util/LunarCalendarTranslator;->sTermC21:[F

    return-void

    .line 19
    nop

    :array_0
    .array-data 0x8
        0xe0t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd5t 0x54t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x54t 0x65t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x9at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd2t 0x55t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb6t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x55t 0xd2t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xd6t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa2t 0xadt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x95t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x77t 0x49t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb5t 0xb4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0x6at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x6dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x54t 0xabt 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x2bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x95t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf2t 0x52t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x66t 0x65t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xeat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x95t 0x6et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x5at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x2bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe3t 0x86t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0x92t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd7t 0xc8t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xc9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa6t 0xd8t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb4t 0xa5t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x25t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x92t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb2t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x57t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x6ct 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x55t 0x53t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x4dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x73t 0x45t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x52t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa8t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xe9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x6at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa6t 0xaet 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xabt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe4t 0xaat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x52t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x63t 0xf2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x57t 0x5bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x96t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd5t 0x4dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd4t 0xd4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x58t 0xd5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xb6t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa6t 0x95t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x95t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x74t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x7at 0xb2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0x6at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x6dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x46t 0xaft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xabt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x95t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf5t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa3t 0x74t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xeat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x58t 0x6bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc0t 0x55t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xabt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd5t 0x96t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0x92t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xc9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x54t 0xd9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xdat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x52t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb7t 0xabt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x25t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x92t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb5t 0xcat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xb4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa4t 0xbat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd9t 0x55t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x76t 0x51t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x52t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x54t 0x79t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x6at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x52t 0x5bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe6t 0xa6t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x65t 0xeat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0xd5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x5at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa3t 0x76t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x96t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd7t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb6t 0xd0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0xd5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x45t 0xddt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb2t 0x55t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x77t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xaat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x55t 0xb2t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x6dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xadt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x63t 0x4bt 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 37
    :array_1
    .array-data 0x2
        0x31t 0x0t
        0x26t 0x0t
        0x1ct 0x0t
        0x2et 0x0t
        0x22t 0x0t
        0x18t 0x0t
        0x2bt 0x0t
        0x20t 0x0t
        0x15t 0x0t
        0x28t 0x0t
        0x1dt 0x0t
        0x30t 0x0t
        0x24t 0x0t
        0x19t 0x0t
        0x2ct 0x0t
        0x21t 0x0t
        0x16t 0x0t
        0x29t 0x0t
        0x1ft 0x0t
        0x32t 0x0t
        0x26t 0x0t
        0x1bt 0x0t
        0x2et 0x0t
        0x23t 0x0t
        0x17t 0x0t
        0x2bt 0x0t
        0x20t 0x0t
        0x16t 0x0t
        0x28t 0x0t
        0x1dt 0x0t
        0x2ft 0x0t
        0x24t 0x0t
        0x19t 0x0t
        0x2ct 0x0t
        0x22t 0x0t
        0x17t 0x0t
        0x29t 0x0t
        0x1et 0x0t
        0x31t 0x0t
        0x26t 0x0t
        0x1at 0x0t
        0x2dt 0x0t
        0x23t 0x0t
        0x18t 0x0t
        0x2bt 0x0t
        0x20t 0x0t
        0x15t 0x0t
        0x28t 0x0t
        0x1ct 0x0t
        0x2ft 0x0t
        0x24t 0x0t
        0x1at 0x0t
        0x2ct 0x0t
        0x21t 0x0t
        0x17t 0x0t
        0x2at 0x0t
        0x1et 0x0t
        0x30t 0x0t
        0x26t 0x0t
        0x1bt 0x0t
        0x2dt 0x0t
        0x23t 0x0t
        0x18t 0x0t
        0x2bt 0x0t
        0x20t 0x0t
        0x14t 0x0t
        0x27t 0x0t
        0x1dt 0x0t
        0x2ft 0x0t
        0x24t 0x0t
        0x1at 0x0t
        0x2dt 0x0t
        0x21t 0x0t
        0x16t 0x0t
        0x29t 0x0t
        0x1et 0x0t
        0x30t 0x0t
        0x25t 0x0t
        0x1bt 0x0t
        0x2et 0x0t
        0x23t 0x0t
        0x18t 0x0t
        0x2bt 0x0t
        0x20t 0x0t
        0x32t 0x0t
        0x27t 0x0t
        0x1ct 0x0t
        0x2ft 0x0t
        0x24t 0x0t
        0x1at 0x0t
        0x2dt 0x0t
        0x22t 0x0t
        0x16t 0x0t
        0x28t 0x0t
        0x1et 0x0t
        0x31t 0x0t
        0x25t 0x0t
        0x1bt 0x0t
        0x2et 0x0t
        0x23t 0x0t
        0x17t 0x0t
        0x2at 0x0t
        0x1ft 0x0t
        0x15t 0x0t
        0x27t 0x0t
        0x1ct 0x0t
        0x30t 0x0t
        0x25t 0x0t
        0x19t 0x0t
        0x2ct 0x0t
        0x21t 0x0t
        0x16t 0x0t
        0x28t 0x0t
        0x1et 0x0t
        0x31t 0x0t
        0x26t 0x0t
        0x1bt 0x0t
        0x2et 0x0t
        0x23t 0x0t
        0x18t 0x0t
        0x2at 0x0t
        0x1ft 0x0t
        0x15t 0x0t
        0x28t 0x0t
        0x1ct 0x0t
        0x2ft 0x0t
        0x24t 0x0t
        0x19t 0x0t
        0x2bt 0x0t
        0x21t 0x0t
        0x16t 0x0t
        0x29t 0x0t
        0x1et 0x0t
        0x31t 0x0t
        0x26t 0x0t
        0x1bt 0x0t
        0x2dt 0x0t
        0x22t 0x0t
        0x17t 0x0t
        0x2at 0x0t
        0x1ft 0x0t
        0x15t 0x0t
        0x28t 0x0t
        0x1dt 0x0t
        0x2ft 0x0t
        0x24t 0x0t
        0x19t 0x0t
        0x2ct 0x0t
        0x20t 0x0t
        0x16t 0x0t
    .end array-data

    .line 60
    :array_2
    .array-data 0x4
        0x1ft 0x85t 0xc3t 0x40t
        0x52t 0xb8t 0xa6t 0x41t
        0xddt 0x24t 0x94t 0x40t
        0xe0t 0xadt 0x9bt 0x41t
        0x42t 0x3et 0xcct 0x40t
        0xf2t 0x52t 0xabt 0x41t
        0x48t 0xe1t 0xb2t 0x40t
        0xa0t 0x1at 0xa7t 0x41t
        0xet 0x2dt 0xcat 0x40t
        0x48t 0xe1t 0xaet 0x41t
        0x0t 0x0t 0xd0t 0x40t
        0x9at 0x99t 0xb1t 0x41t
        0x2dt 0xb2t 0xfdt 0x40t
        0x33t 0x33t 0xbdt 0x41t
        0x9at 0x99t 0x5t 0x41t
        0x9at 0x99t 0xbft 0x41t
        0x3dt 0xat 0x7t 0x41t
        0x75t 0x93t 0xbet 0x41t
        0x68t 0x91t 0x11t 0x41t
        0x77t 0xbet 0xc1t 0x41t
        0xeet 0x7ct 0x3t 0x41t
        0xd7t 0xa3t 0xb8t 0x41t
        0xcdt 0xcct 0xfct 0x40t
        0xcdt 0xcct 0xb4t 0x41t
    .end array-data

    .line 67
    :array_3
    .array-data 0x4
        0xdbt 0xf9t 0xact 0x40t
        0xc3t 0xf5t 0xa0t 0x41t
        0x14t 0xaet 0x77t 0x40t
        0xat 0xd7t 0x95t 0x41t
        0xf6t 0x28t 0xb4t 0x40t
        0x2t 0x2bt 0xa5t 0x41t
        0x85t 0xebt 0x99t 0x40t
        0xcdt 0xcct 0xa0t 0x41t
        0xd7t 0xa3t 0xb0t 0x40t
        0xect 0x51t 0xa8t 0x41t
        0x2dt 0xb2t 0xb5t 0x40t
        0xc3t 0xf5t 0xaat 0x41t
        0xbct 0x74t 0xe3t 0x40t
        0xd7t 0xa3t 0xb6t 0x41t
        0x0t 0x0t 0xf0t 0x40t
        0x3dt 0xat 0xb9t 0x41t
        0x8t 0xact 0xf4t 0x40t
        0x4t 0x56t 0xb8t 0x41t
        0x87t 0x16t 0x5t 0x41t
        0x6t 0x81t 0xbbt 0x41t
        0x19t 0x4t 0xeet 0x40t
        0x48t 0xe1t 0xb2t 0x41t
        0x8ft 0xc2t 0xe5t 0x40t
        0x1ft 0x85t 0xaft 0x41t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v1, 0x3

    new-array v1, v1, [I

    iput-object v1, p0, Lyi/util/LunarCalendarTranslator;->mFields:[I

    .line 16
    const/4 v1, 0x0

    iput-boolean v1, p0, Lyi/util/LunarCalendarTranslator;->mIsLeap:Z

    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 76
    .local v0, calendar:Ljava/util/Calendar;
    invoke-direct {p0}, Lyi/util/LunarCalendarTranslator;->clear()V

    .line 77
    invoke-direct {p0, v0}, Lyi/util/LunarCalendarTranslator;->solarCalendarToLundar(Ljava/util/Calendar;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 1
    .parameter "calendar"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lyi/util/LunarCalendarTranslator;->mFields:[I

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lyi/util/LunarCalendarTranslator;->mIsLeap:Z

    .line 81
    invoke-direct {p0}, Lyi/util/LunarCalendarTranslator;->clear()V

    .line 82
    invoke-direct {p0, p1}, Lyi/util/LunarCalendarTranslator;->solarCalendarToLundar(Ljava/util/Calendar;)V

    .line 83
    return-void
.end method

.method private final clear()V
    .locals 2

    .prologue
    .line 87
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 88
    .local v0, tempFields:[I
    iput-object v0, p0, Lyi/util/LunarCalendarTranslator;->mFields:[I

    .line 89
    const/4 v1, 0x0

    iput-boolean v1, p0, Lyi/util/LunarCalendarTranslator;->mIsLeap:Z

    .line 90
    return-void

    .line 87
    :array_0
    .array-data 0x4
        0xb2t 0x7t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static getDateOfTerm(II)Ljava/util/Calendar;
    .locals 3
    .parameter "y"
    .parameter "n"

    .prologue
    .line 365
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 370
    .local v0, cal:Ljava/util/Calendar;
    invoke-static {p0, p1}, Lyi/util/LunarCalendarTranslator;->getDayOfTerm(II)I

    move-result v1

    .line 371
    .local v1, day:I
    div-int/lit8 v2, p1, 0x2

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/Calendar;->set(III)V

    .line 373
    return-object v0
.end method

.method public static getDayOfTerm(II)I
    .locals 12
    .parameter "year"
    .parameter "n"

    .prologue
    const/16 v11, 0x829

    const/16 v6, 0x7d0

    const/16 v10, 0xc

    const/16 v9, 0x9

    .line 381
    const/4 v1, 0x0

    .line 382
    .local v1, c:F
    rem-int/lit8 v3, p0, 0x64

    .line 383
    .local v3, y:I
    const/16 v5, 0x76c

    if-lt p0, v5, :cond_5

    if-ge p0, v6, :cond_5

    .line 384
    sget-object v5, Lyi/util/LunarCalendarTranslator;->sTermC20:[F

    aget v1, v5, p1

    .line 388
    :cond_0
    :goto_0
    int-to-double v5, v3

    const-wide v7, 0x3fcf0068db8bac71L

    mul-double/2addr v5, v7

    float-to-double v7, v1

    add-double/2addr v5, v7

    double-to-int v4, v5

    .line 389
    .local v4, ydc:I
    const/4 v5, 0x4

    if-ge p1, v5, :cond_1

    invoke-static {v3}, Lyi/util/LunarCalendarTranslator;->isSolarLeapYear(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 390
    add-int/lit8 v3, v3, -0x1

    .line 392
    :cond_1
    div-int/lit8 v0, v3, 0x4

    .line 393
    .local v0, L:I
    sub-int v2, v4, v0

    .line 396
    .local v2, day:I
    const/16 v5, 0x7ea

    if-ne p0, v5, :cond_2

    const/4 v5, 0x3

    if-eq p1, v5, :cond_3

    :cond_2
    const/16 v5, 0x77e

    if-ne p0, v5, :cond_6

    if-ne p1, v9, :cond_6

    .line 397
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 412
    :cond_4
    :goto_1
    return v2

    .line 385
    .end local v0           #L:I
    .end local v2           #day:I
    .end local v4           #ydc:I
    :cond_5
    if-lt p0, v6, :cond_0

    const/16 v5, 0x834

    if-ge p0, v5, :cond_0

    .line 386
    sget-object v5, Lyi/util/LunarCalendarTranslator;->sTermC21:[F

    aget v1, v5, p1

    goto :goto_0

    .line 399
    .restart local v0       #L:I
    .restart local v2       #day:I
    .restart local v4       #ydc:I
    :cond_6
    const/16 v5, 0x824

    if-ne p0, v5, :cond_7

    const/4 v5, 0x5

    if-eq p1, v5, :cond_15

    :cond_7
    const/16 v5, 0x777

    if-ne p0, v5, :cond_8

    const/16 v5, 0x8

    if-eq p1, v5, :cond_15

    :cond_8
    const/16 v5, 0x7d8

    if-ne p0, v5, :cond_9

    if-eq p1, v9, :cond_15

    :cond_9
    const/16 v5, 0x76e

    if-ne p0, v5, :cond_a

    const/16 v5, 0xa

    if-eq p1, v5, :cond_15

    :cond_a
    const/16 v5, 0x788

    if-ne p0, v5, :cond_b

    const/16 v5, 0xb

    if-eq p1, v5, :cond_15

    :cond_b
    const/16 v5, 0x785

    if-ne p0, v5, :cond_c

    if-eq p1, v10, :cond_15

    :cond_c
    const/16 v5, 0x7e0

    if-ne p0, v5, :cond_d

    if-eq p1, v10, :cond_15

    :cond_d
    const/16 v5, 0x782

    if-ne p0, v5, :cond_e

    const/16 v5, 0xd

    if-eq p1, v5, :cond_15

    :cond_e
    const/16 v5, 0x7d2

    if-ne p0, v5, :cond_f

    const/16 v5, 0xe

    if-eq p1, v5, :cond_15

    :cond_f
    const/16 v5, 0x787

    if-ne p0, v5, :cond_10

    const/16 v5, 0x10

    if-eq p1, v5, :cond_15

    :cond_10
    const/16 v5, 0x796

    if-ne p0, v5, :cond_11

    const/16 v5, 0x11

    if-eq p1, v5, :cond_15

    :cond_11
    if-ne p0, v11, :cond_12

    const/16 v5, 0x13

    if-eq p1, v5, :cond_15

    :cond_12
    if-ne p0, v11, :cond_13

    const/16 v5, 0x14

    if-eq p1, v5, :cond_15

    :cond_13
    const/16 v5, 0x7ba

    if-ne p0, v5, :cond_14

    const/16 v5, 0x15

    if-eq p1, v5, :cond_15

    :cond_14
    const/16 v5, 0x7a2

    if-ne p0, v5, :cond_4

    const/16 v5, 0x16

    if-ne p1, v5, :cond_4

    .line 407
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static final getLeapDays(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 194
    invoke-static {p0}, Lyi/util/LunarCalendarTranslator;->getLeapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    sget-object v0, Lyi/util/LunarCalendarTranslator;->sLunarInfo:[J

    add-int/lit16 v1, p0, -0x76d

    aget-wide v0, v0, v1

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 196
    const/16 v0, 0x1e

    .line 200
    :goto_0
    return v0

    .line 198
    :cond_0
    const/16 v0, 0x1d

    goto :goto_0

    .line 200
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getLeapMonth(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 190
    sget-object v0, Lyi/util/LunarCalendarTranslator;->sLunarInfo:[J

    add-int/lit16 v1, p0, -0x76d

    aget-wide v0, v0, v1

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static final getLunarMonthDays(II)I
    .locals 4
    .parameter "y"
    .parameter "m"

    .prologue
    .line 217
    sget-object v0, Lyi/util/LunarCalendarTranslator;->sLunarInfo:[J

    add-int/lit16 v1, p0, -0x76d

    aget-wide v0, v0, v1

    const/high16 v2, 0x1

    add-int/lit8 v3, p1, 0x1

    shr-int/2addr v2, v3

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 218
    const/16 v0, 0x1d

    .line 220
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method private static getLunarNewYearOffsetDays(III)I
    .locals 4
    .parameter "iYear"
    .parameter "iMonth"
    .parameter "iDay"

    .prologue
    .line 256
    const/4 v2, 0x0

    .line 257
    .local v2, iOffsetDays:I
    invoke-static {p0}, Lyi/util/LunarCalendarTranslator;->getLeapMonth(I)I

    move-result v1

    .line 265
    .local v1, iLeapMonth:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 266
    invoke-static {p0, v0}, Lyi/util/LunarCalendarTranslator;->getLunarMonthDays(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 267
    if-ne v0, v1, :cond_0

    .line 268
    invoke-static {p0}, Lyi/util/LunarCalendarTranslator;->getLeapDays(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 265
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_1
    add-int/lit8 v3, p2, -0x1

    add-int/2addr v2, v3

    .line 272
    return v2
.end method

.method private static final getSolarNewYearOffsetDays(III)I
    .locals 3
    .parameter "iYear"
    .parameter "iMonth"
    .parameter "iDay"

    .prologue
    .line 204
    const/4 v1, 0x0

    .line 206
    .local v1, iOffsetDays:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 207
    invoke-static {p0, v0}, Lyi/util/LunarCalendarTranslator;->getSolarYearMonthDays(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_0
    add-int/lit8 v2, p2, -0x1

    add-int/2addr v1, v2

    .line 211
    return v1
.end method

.method private static getSolarYearMonthDays(II)I
    .locals 1
    .parameter "year"
    .parameter "month"

    .prologue
    .line 282
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 284
    :cond_0
    const/16 v0, 0x1f

    .line 294
    :goto_0
    return v0

    .line 285
    :cond_1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    .line 287
    :cond_2
    const/16 v0, 0x1e

    goto :goto_0

    .line 288
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 289
    invoke-static {p0}, Lyi/util/LunarCalendarTranslator;->isSolarLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 290
    const/16 v0, 0x1d

    goto :goto_0

    .line 292
    :cond_4
    const/16 v0, 0x1c

    goto :goto_0

    .line 294
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSolarLeapYear(I)Z
    .locals 1
    .parameter "year"

    .prologue
    .line 277
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_1

    :cond_0
    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private solarCalendarToLundar(Ljava/util/Calendar;)V
    .locals 13
    .parameter "calendar"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 135
    invoke-virtual {p1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 136
    .local v8, iYear:I
    invoke-virtual {p1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 137
    .local v6, iMonth:I
    const/4 v9, 0x5

    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 140
    .local v1, iDay:I
    invoke-static {v8, v6, v1}, Lyi/util/LunarCalendarTranslator;->getSolarNewYearOffsetDays(III)I

    move-result v7

    .line 141
    .local v7, iOffsetDays:I
    invoke-static {v8}, Lyi/util/LunarCalendarTranslator;->getLeapMonth(I)I

    move-result v5

    .line 143
    .local v5, iLeapMonth:I
    sget-object v9, Lyi/util/LunarCalendarTranslator;->sSolarLunarOffsetTable:[C

    add-int/lit16 v10, v8, -0x76d

    aget-char v9, v9, v10

    if-ge v7, v9, :cond_4

    .line 144
    add-int/lit8 v4, v8, -0x1

    .line 146
    .local v4, iLYear:I
    const/16 v9, 0x76d

    if-lt v4, v9, :cond_0

    const/16 v9, 0x802

    if-le v4, v9, :cond_1

    .line 147
    :cond_0
    :try_start_0
    new-instance v9, Lyi/util/LunarCalendarTranslator$OutOfLunarRangeException;

    invoke-direct {v9, p0}, Lyi/util/LunarCalendarTranslator$OutOfLunarRangeException;-><init>(Lyi/util/LunarCalendarTranslator;)V

    throw v9
    :try_end_0
    .catch Lyi/util/LunarCalendarTranslator$OutOfLunarRangeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Lyi/util/LunarCalendarTranslator$OutOfLunarRangeException;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 153
    .end local v0           #e:Lyi/util/LunarCalendarTranslator$OutOfLunarRangeException;
    :cond_1
    sget-object v9, Lyi/util/LunarCalendarTranslator;->sSolarLunarOffsetTable:[C

    add-int/lit16 v10, v8, -0x76d

    aget-char v9, v9, v10

    sub-int v7, v9, v7

    .line 154
    move v2, v7

    .line 156
    .local v2, iLDay:I
    const/16 v3, 0xb

    .local v3, iLMonth:I
    :goto_0
    invoke-static {v4, v3}, Lyi/util/LunarCalendarTranslator;->getLunarMonthDays(II)I

    move-result v9

    if-le v7, v9, :cond_2

    .line 157
    move v2, v7

    .line 158
    invoke-static {v4, v3}, Lyi/util/LunarCalendarTranslator;->getLunarMonthDays(II)I

    move-result v9

    sub-int/2addr v7, v9

    .line 156
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 160
    :cond_2
    if-nez v2, :cond_3

    .line 161
    const/4 v2, 0x1

    .line 184
    :goto_1
    iget-object v9, p0, Lyi/util/LunarCalendarTranslator;->mFields:[I

    const/4 v10, 0x0

    aput v4, v9, v10

    .line 185
    iget-object v9, p0, Lyi/util/LunarCalendarTranslator;->mFields:[I

    aput v3, v9, v11

    .line 186
    iget-object v9, p0, Lyi/util/LunarCalendarTranslator;->mFields:[I

    aput v2, v9, v12

    .line 187
    return-void

    .line 163
    :cond_3
    invoke-static {v4, v3}, Lyi/util/LunarCalendarTranslator;->getLunarMonthDays(II)I

    move-result v9

    sub-int/2addr v9, v7

    add-int/lit8 v2, v9, 0x1

    goto :goto_1

    .line 165
    .end local v2           #iLDay:I
    .end local v3           #iLMonth:I
    .end local v4           #iLYear:I
    :cond_4
    move v4, v8

    .line 166
    .restart local v4       #iLYear:I
    sget-object v9, Lyi/util/LunarCalendarTranslator;->sSolarLunarOffsetTable:[C

    add-int/lit16 v10, v8, -0x76d

    aget-char v9, v9, v10

    sub-int/2addr v7, v9

    .line 167
    add-int/lit8 v2, v7, 0x1

    .line 169
    .restart local v2       #iLDay:I
    const/4 v3, 0x0

    .restart local v3       #iLMonth:I
    :goto_2
    if-ltz v7, :cond_5

    .line 170
    add-int/lit8 v2, v7, 0x1

    .line 171
    invoke-static {v4, v3}, Lyi/util/LunarCalendarTranslator;->getLunarMonthDays(II)I

    move-result v9

    sub-int/2addr v7, v9

    .line 172
    if-ne v5, v3, :cond_6

    if-ltz v7, :cond_6

    .line 173
    add-int/lit8 v2, v7, 0x1

    .line 174
    invoke-static {v4}, Lyi/util/LunarCalendarTranslator;->getLeapDays(I)I

    move-result v9

    sub-int/2addr v7, v9

    .line 175
    const/4 v9, -0x1

    if-gt v7, v9, :cond_6

    .line 176
    invoke-virtual {p0, v11}, Lyi/util/LunarCalendarTranslator;->setLeap(Z)Z

    .line 177
    add-int/lit8 v3, v3, 0x1

    .line 182
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 169
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static translateLunarToSolar(III)Ljava/util/Calendar;
    .locals 9
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 230
    invoke-static {p0, p1, p2}, Lyi/util/LunarCalendarTranslator;->getLunarNewYearOffsetDays(III)I

    move-result v6

    sget-object v7, Lyi/util/LunarCalendarTranslator;->sSolarLunarOffsetTable:[C

    add-int/lit16 v8, p0, -0x76d

    aget-char v7, v7, v8

    add-int v1, v6, v7

    .line 233
    .local v1, iOffsetDays:I
    invoke-static {p0}, Lyi/util/LunarCalendarTranslator;->isSolarLeapYear(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x16e

    .line 235
    .local v5, iYearDays:I
    :goto_0
    if-lt v1, v5, :cond_1

    .line 236
    add-int/lit8 v4, p0, 0x1

    .line 237
    .local v4, iSYear:I
    sub-int/2addr v1, v5

    .line 241
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .line 242
    .local v2, iSDay:I
    const/4 v3, 0x0

    .local v3, iSMonth:I
    :goto_2
    if-ltz v1, :cond_2

    .line 243
    add-int/lit8 v2, v1, 0x1

    .line 244
    invoke-static {v4, v3}, Lyi/util/LunarCalendarTranslator;->getSolarYearMonthDays(II)I

    move-result v6

    sub-int/2addr v1, v6

    .line 242
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 233
    .end local v2           #iSDay:I
    .end local v3           #iSMonth:I
    .end local v4           #iSYear:I
    .end local v5           #iYearDays:I
    :cond_0
    const/16 v5, 0x16d

    goto :goto_0

    .line 239
    .restart local v5       #iYearDays:I
    :cond_1
    move v4, p0

    .restart local v4       #iSYear:I
    goto :goto_1

    .line 246
    .restart local v2       #iSDay:I
    .restart local v3       #iSMonth:I
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 248
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 249
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, v4, v3, v2}, Ljava/util/Calendar;->set(III)V

    .line 251
    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 94
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyi/util/LunarCalendarTranslator;

    .line 95
    .local v1, lunarCalendar:Lyi/util/LunarCalendarTranslator;
    iget-object v2, p0, Lyi/util/LunarCalendarTranslator;->mFields:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    iput-object v2, v1, Lyi/util/LunarCalendarTranslator;->mFields:[I

    .line 96
    iget-boolean v2, p0, Lyi/util/LunarCalendarTranslator;->mIsLeap:Z

    iput-boolean v2, v1, Lyi/util/LunarCalendarTranslator;->mIsLeap:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v1           #lunarCalendar:Lyi/util/LunarCalendarTranslator;
    :goto_0
    return-object v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected complete()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 108
    :goto_0
    iget-object v2, p0, Lyi/util/LunarCalendarTranslator;->mFields:[I

    aget v2, v2, v5

    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    .line 109
    iget-object v2, p0, Lyi/util/LunarCalendarTranslator;->mFields:[I

    aget v3, v2, v6

    iget-object v4, p0, Lyi/util/LunarCalendarTranslator;->mFields:[I

    aget v4, v4, v5

    div-int/lit8 v4, v4, 0xc

    add-int/2addr v3, v4

    aput v3, v2, v6

    .line 110
    iget-object v2, p0, Lyi/util/LunarCalendarTranslator;->mFields:[I

    iget-object v3, p0, Lyi/util/LunarCalendarTranslator;->mFields:[I

    aget v3, v3, v5

    rem-int/lit8 v3, v3, 0xc

    aput v3, v2, v5

    .line 114
    :cond_0
    :try_start_0
    iget-object v2, p0, Lyi/util/LunarCalendarTranslator;->mFields:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, 0x76d

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lyi/util/LunarCalendarTranslator;->mFields:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, 0x802

    if-le v2, v3, :cond_2

    .line 115
    :cond_1
    new-instance v2, Lyi/util/LunarCalendarTranslator$OutOfLunarRangeException;

    invoke-direct {v2, p0}, Lyi/util/LunarCalendarTranslator$OutOfLunarRangeException;-><init>(Lyi/util/LunarCalendarTranslator;)V

    throw v2
    :try_end_0
    .catch Lyi/util/LunarCalendarTranslator$OutOfLunarRangeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, e:Lyi/util/LunarCalendarTranslator$OutOfLunarRangeException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 122
    .end local v1           #e:Lyi/util/LunarCalendarTranslator$OutOfLunarRangeException;
    :cond_2
    iget-object v2, p0, Lyi/util/LunarCalendarTranslator;->mFields:[I

    aget v2, v2, v6

    iget-object v3, p0, Lyi/util/LunarCalendarTranslator;->mFields:[I

    aget v3, v3, v5

    invoke-static {v2, v3}, Lyi/util/LunarCalendarTranslator;->getLunarMonthDays(II)I

    move-result v0

    .line 123
    .local v0, daysOfMonth:I
    iget-boolean v2, p0, Lyi/util/LunarCalendarTranslator;->mIsLeap:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lyi/util/LunarCalendarTranslator;->mFields:[I

    aget v2, v2, v5

    iget-object v3, p0, Lyi/util/LunarCalendarTranslator;->mFields:[I

    aget v3, v3, v6

    invoke-static {v3}, Lyi/util/LunarCalendarTranslator;->getLeapMonth(I)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 124
    iget-object v2, p0, Lyi/util/LunarCalendarTranslator;->mFields:[I

    aget v2, v2, v6

    invoke-static {v2}, Lyi/util/LunarCalendarTranslator;->getLeapDays(I)I

    move-result v0

    .line 126
    :cond_3
    iget-object v2, p0, Lyi/util/LunarCalendarTranslator;->mFields:[I

    aget v2, v2, v7

    sub-int/2addr v2, v0

    if-gtz v2, :cond_4

    .line 132
    return-void

    .line 129
    :cond_4
    iget-object v2, p0, Lyi/util/LunarCalendarTranslator;->mFields:[I

    aget v3, v2, v7

    sub-int/2addr v3, v0

    aput v3, v2, v7

    .line 130
    iget-object v2, p0, Lyi/util/LunarCalendarTranslator;->mFields:[I

    aget v3, v2, v5

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v5

    goto :goto_0
.end method

.method public get(I)I
    .locals 1
    .parameter "field"

    .prologue
    .line 322
    invoke-virtual {p0}, Lyi/util/LunarCalendarTranslator;->complete()V

    .line 331
    iget-object v0, p0, Lyi/util/LunarCalendarTranslator;->mFields:[I

    aget v0, v0, p1

    return v0
.end method

.method public getLeap()Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lyi/util/LunarCalendarTranslator;->mIsLeap:Z

    return v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 4

    .prologue
    .line 350
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 351
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 352
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lyi/util/LunarCalendarTranslator;->get(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lyi/util/LunarCalendarTranslator;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lyi/util/LunarCalendarTranslator;->get(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 353
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public set(II)V
    .locals 3
    .parameter "field"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 305
    packed-switch p1, :pswitch_data_0

    .line 319
    :goto_0
    return-void

    .line 307
    :pswitch_0
    iget-object v0, p0, Lyi/util/LunarCalendarTranslator;->mFields:[I

    aput p2, v0, v2

    .line 308
    iput-boolean v2, p0, Lyi/util/LunarCalendarTranslator;->mIsLeap:Z

    goto :goto_0

    .line 311
    :pswitch_1
    iget-object v0, p0, Lyi/util/LunarCalendarTranslator;->mFields:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 312
    iput-boolean v2, p0, Lyi/util/LunarCalendarTranslator;->mIsLeap:Z

    goto :goto_0

    .line 315
    :pswitch_2
    iget-object v0, p0, Lyi/util/LunarCalendarTranslator;->mFields:[I

    const/4 v1, 0x2

    aput p2, v0, v1

    .line 316
    iput-boolean v2, p0, Lyi/util/LunarCalendarTranslator;->mIsLeap:Z

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public set(III)V
    .locals 1
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lyi/util/LunarCalendarTranslator;->set(II)V

    .line 300
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lyi/util/LunarCalendarTranslator;->set(II)V

    .line 301
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p3}, Lyi/util/LunarCalendarTranslator;->set(II)V

    .line 302
    return-void
.end method

.method public setLeap(Z)Z
    .locals 1
    .parameter "leap"

    .prologue
    .line 339
    iput-boolean p1, p0, Lyi/util/LunarCalendarTranslator;->mIsLeap:Z

    .line 340
    const/4 v0, 0x1

    return v0
.end method

.method public setTime(Ljava/util/Date;)V
    .locals 4
    .parameter "date"

    .prologue
    .line 344
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 345
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 346
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lyi/util/LunarCalendarTranslator;->set(III)V

    .line 347
    return-void
.end method

.method public toSolarCalendar()Ljava/util/Calendar;
    .locals 3

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lyi/util/LunarCalendarTranslator;->get(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lyi/util/LunarCalendarTranslator;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lyi/util/LunarCalendarTranslator;->get(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lyi/util/LunarCalendarTranslator;->translateLunarToSolar(III)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method
