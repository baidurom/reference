.class Lcom/baidu/security/sysop/YiSettings;
.super Ljava/lang/Object;
.source "YiSettings.java"


# static fields
.field static final APP_CRITICAL_LIST:[Ljava/lang/String;

.field static final APP_WHITE_LIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android"

    aput-object v1, v0, v3

    const-string v1, "com.android.phone"

    aput-object v1, v0, v4

    const-string v1, "com.android.systemui"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "com.baidu.bsf.system"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.baidu.home2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.providers.userdictionary"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.wallpaper"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.wallpaper.holospiral"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.wallpaper.livepicker"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.musicvis"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.android.noisefield"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.android.phasebeam"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.baidu.systemwallpaper"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.baidu.baiduclock"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.android.providers.media"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/security/sysop/YiSettings;->APP_WHITE_LIST:[Ljava/lang/String;

    .line 50
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.android.contacts"

    aput-object v1, v0, v3

    const-string v1, "com.baidu.home2"

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/security/sysop/YiSettings;->APP_CRITICAL_LIST:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
