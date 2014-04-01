.class public final Landroid/telephony/BaiduTelephonyUtils$SimInfo;
.super Ljava/lang/Object;
.source "BaiduTelephonyUtils.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/BaiduTelephonyUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimInfo"
.end annotation


# static fields
.field public static final ACTION_SIM_INFO_UPDATE:Ljava/lang/String; = "android.intent.action.SIM_SETTING_INFO_CHANGED"

.field public static final CALL_RINGTONE:Ljava/lang/String; = "call_ringtone"

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final COLOR_1:I = 0x0

.field public static final COLOR_2:I = 0x1

.field public static final COLOR_3:I = 0x2

.field public static final COLOR_4:I = 0x3

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field public static final DATA_ROAMING_DEFAULT:I = 0x0

.field public static final DATA_ROAMING_DISABLE:I = 0x0

.field public static final DATA_ROAMING_ENABLE:I = 0x1

.field public static final DEFAULT_NAME_MAX_INDEX:I = 0x63

.field public static final DEFAULT_NAME_MIN_INDEX:I = 0x1

.field public static final DEFAULT_NAME_RES:I = 0x205006f

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final DISLPAY_NUMBER_DEFAULT:I = 0x1

.field public static final DISPALY_NUMBER_NONE:I = 0x0

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final DISPLAY_NUMBER_FIRST:I = 0x1

.field public static final DISPLAY_NUMBER_FORMAT:Ljava/lang/String; = "display_number_format"

.field public static final DISPLAY_NUMBER_LAST:I = 0x2

.field public static final ERROR_GENERAL:I = -0x1

.field public static final ERROR_NAME_EXIST:I = -0x2

.field public static final ICC_ID:Ljava/lang/String; = "icc_id"

.field public static final IP_AUTO_ENABLE:Ljava/lang/String; = "ip_auto_enable"

.field public static final IP_AUTO_ENABLE_DEFAULT:I = 0x1

.field public static final IP_CUSTOM_PREFIX:Ljava/lang/String; = "ip_custom_prefix"

.field public static final IP_ENABLE:Ljava/lang/String; = "ip_enable"

.field public static final IP_ENABLE_DEFAULT:I = -0x1

.field public static final IP_ENABLE_DISABLE:I = 0x0

.field public static final IP_ENABLE_ENABLE:I = 0x1

.field public static final IP_FIRST_ENABLE:Ljava/lang/String; = "ip_first_enable"

.field public static final IP_FIRST_ENABLE_DEFAULT:I = 0x1

.field public static final IP_PREFIX:Ljava/lang/String; = "ip_prefix"

.field public static final IP_SELF_LOCATION:Ljava/lang/String; = "ip_self_location"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final SIM_ID:Ljava/lang/String; = "simid"

.field public static final SLOT:Ljava/lang/String; = "slot"

.field public static final SLOT_NONE:I = -0x1

.field public static final SMS_RINGTONE:Ljava/lang/String; = "sms_ringtone"

.field public static final WAP_PUSH:Ljava/lang/String; = "wap_push"

.field public static final WAP_PUSH_DEFAULT:I = -0x1

.field public static final WAP_PUSH_DISABLE:I = 0x0

.field public static final WAP_PUSH_ENABLE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const-string v0, "content://telephony/siminfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
