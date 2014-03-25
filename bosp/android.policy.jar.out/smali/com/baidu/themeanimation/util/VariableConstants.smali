.class public Lcom/baidu/themeanimation/util/VariableConstants;
.super Ljava/lang/Object;
.source "VariableConstants.java"


# static fields
.field public static final ALARM_COUNT:Ljava/lang/String; = "alarm_count"

.field public static final ALARM_FORMATE:Ljava/lang/String; = "alarm_info"

.field public static final DATE_FOMATE:Ljava/lang/String; = "date_format"

.field public static final DATE_POSITION_Y:Ljava/lang/String; = "date_position_y"

.field public static final MUSIC_CONTROL_VISIBILITY:Ljava/lang/String; = "music_control.visibility"

.field public static final SHOW_DATE:Ljava/lang/String; = "show_date"

.field public static final TEXT_SIZE_DATE:Ljava/lang/String; = "text_size_date"

.field private static final VA:[Ljava/lang/String; = null

.field public static final VAI_BATTERY_LEVEL:I = 0x10

.field public static final VAI_BATTERY_STATE:I = 0x12

.field public static final VAI_CALL_MISSED_COUNT:I = 0xe

.field public static final VAI_CATEGORY:I = 0xa

.field public static final VAI_DATE_DAY:I = 0x4

.field public static final VAI_DATE_MONTH:I = 0x5

.field public static final VAI_DATE_WEEK:I = 0x7

.field public static final VAI_DATE_YEAR:I = 0x6

.field public static final VAI_SCREEN_HEIGHT:I = 0xc

.field public static final VAI_SCREEN_WIDTH:I = 0xb

.field public static final VAI_SMS_UNREAD_COUNT:I = 0xf

.field public static final VAI_TIME:I = 0x11

.field public static final VAI_TIME_HOUR12:I = 0x2

.field public static final VAI_TIME_HOUR24:I = 0x3

.field public static final VAI_TIME_MINUTE:I = 0x1

.field public static final VAI_TIME_SECONE:I = 0x0

.field public static final VAI_TIME_SYS:I = 0xd

.field public static final VAI_TOUCH_X:I = 0x8

.field public static final VAI_TOUCH_Y:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "second"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "minute"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "hour12"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hour24"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "day"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "month"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "year"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "day_of_week"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "touch_x"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "touch_y"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "category"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "screen_width"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "screen_height"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "time_sys"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "call_missed_count"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "sms_unread_count"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "battery_level"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "time"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "battery_state"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/themeanimation/util/VariableConstants;->VA:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGlobalVariableTag(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 7
    sget-object v0, Lcom/baidu/themeanimation/util/VariableConstants;->VA:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
