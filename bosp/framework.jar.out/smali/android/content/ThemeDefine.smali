.class public Landroid/content/ThemeDefine;
.super Ljava/lang/Object;
.source "ThemeDefine.java"


# static fields
.field public static final ACTION_THEME_CHANGED:Ljava/lang/String; = "android.intent.action.THEME_CHANGED"

.field public static final BOUNDARY_AN:I = 0x1

.field public static final BOUNDARY_VALUE:I = 0x70000000

.field public static final BOUNDARY_YI:I = 0x5

.field public static final CONFIG_THEME:I = -0x80000000

.field public static final FILE_COLOR:Ljava/lang/String; = "res/values/colors.xml"

.field public static final FILE_CONFIG:Ljava/lang/String; = "res/values/configs.xml"

.field public static final FILE_VALUES:Ljava/lang/String; = "values/"

.field private static IconPath:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final OVL_PATH:Ljava/lang/String; = "/system/etc/baidu/theme"

.field public static final TAG_BAIDU_THEME:Ljava/lang/String; = "Baidu-Theme"

.field public static final TAG_COLOR:Ljava/lang/String; = "color"

.field public static final TAG_CONFIG:Ljava/lang/String; = "config"

.field public static final TAG_DIMEN:Ljava/lang/String; = "dimen"

.field public static final TAG_NAME:Ljava/lang/String; = "name"

.field public static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static final TAG_RESOURCES:Ljava/lang/String; = "resources"

.field public static final THEME_CONTACTS:Ljava/lang/String; = "com.android.contacts"

.field public static final THEME_DIALPAD:Ljava/lang/String; = "com.baidu.dialpad"

.field public static final THEME_FRAMEWORK:Ljava/lang/String; = "framework-res"

.field public static final THEME_FRAMEWORK_YI:Ljava/lang/String; = "framework-yi-res"

.field public static final THEME_ICONS:Ljava/lang/String; = "icons"

.field public static final THEME_PATH:Ljava/lang/String; = "/data/data/com.baidu.thememanager.ui/files"

.field public static final THEME_VALUE_FILE_NAME:Ljava/lang/String; = "theme_values.xml"

.field private static speciallPackage:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIconPath()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    .line 171
    :cond_0
    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 172
    invoke-static {}, Landroid/content/ThemeDefine;->initIconPath()V

    .line 175
    :cond_1
    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    return-object v0
.end method

.method private static initIconPath()V
    .locals 3

    .prologue
    .line 131
    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    const-string v1, "/ic_launcher_contacts.png"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    const-string v1, "/ic_launcher_phone.png"

    const-string v2, "com.android.phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    const-string v1, "/ic_launcher_smsmms.png"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    const-string v1, "/ic_launcher_camera.png"

    const-string v2, "com.baidu.camera"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    const-string v1, "/ic_launcher_shortcut_contact.png"

    const-string v2, "ic_launcher_shortcut_contact"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    const-string v1, "/ic_launcher_shortcut_directdial.png"

    const-string v2, "ic_launcher_shortcut_directdial"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    const-string v1, "/ic_launcher_shortcut_directmessage.png"

    const-string v2, "ic_launcher_shortcut_directmessage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method private static initSpecialSet()V
    .locals 2

    .prologue
    .line 144
    sget-object v0, Landroid/content/ThemeDefine;->speciallPackage:Ljava/util/HashSet;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Landroid/content/ThemeDefine;->speciallPackage:Ljava/util/HashSet;

    const-string v1, "com.baidu.gallery3d"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public static isSpecialPackage(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 154
    sget-object v0, Landroid/content/ThemeDefine;->speciallPackage:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/content/ThemeDefine;->speciallPackage:Ljava/util/HashSet;

    .line 157
    :cond_0
    sget-object v0, Landroid/content/ThemeDefine;->speciallPackage:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 158
    invoke-static {}, Landroid/content/ThemeDefine;->initSpecialSet()V

    .line 160
    :cond_1
    sget-object v0, Landroid/content/ThemeDefine;->speciallPackage:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
