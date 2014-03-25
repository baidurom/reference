.class public final Landroid/content/res/AssetManager;
.super Ljava/lang/Object;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/AssetManager$1;,
        Landroid/content/res/AssetManager$AssetInputStream;
    }
.end annotation


# static fields
.field public static final ACCESS_BUFFER:I = 0x3

.field public static final ACCESS_RANDOM:I = 0x1

.field public static final ACCESS_STREAMING:I = 0x2

.field public static final ACCESS_UNKNOWN:I = 0x0

.field private static final DEBUG_REFS:Z = false

.field private static final OEM_PKGS:[Ljava/lang/String; = null

.field private static final SINA_WEIBO_CONFIG_JASON:Ljava/lang/String; = "cfg.json"

.field private static final SINA_WEIBO_RES_BEGIN_ID:I = 0x7f010000

.field private static final SINA_WEIBO_WM_KEY:Ljava/lang/String; = "\"WM\""

.field private static final SINA_WEIBO_WM_VALUE_FOR_BAIDU:Ljava/lang/String; = "9178_0005"

.field private static final SING_WEIBO_PACKAGE_NAME:Ljava/lang/String; = "com.sina.weibo"

.field static final STYLE_ASSET_COOKIE:I = 0x2

.field static final STYLE_CHANGING_CONFIGURATIONS:I = 0x4

.field static final STYLE_DATA:I = 0x1

.field static final STYLE_DENSITY:I = 0x5

.field static final STYLE_NUM_ENTRIES:I = 0x6

.field static final STYLE_RESOURCE_ID:I = 0x3

.field static final STYLE_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AssetManager"

.field private static final localLOGV:Z

.field private static final sSync:Ljava/lang/Object;

.field static sSystem:Landroid/content/res/AssetManager;


# instance fields
.field mDpi:I

.field private mIconMatch:Ljava/util/HashMap;
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

.field private mIconPath:Ljava/util/HashMap;
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

.field private mNObject:I

.field private mNumRefs:I

.field private mObject:I

.field private final mOffsets:[J

.field private mOpen:Z

.field mPackageName:Ljava/lang/String;

.field private mRefStacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/RuntimeException;",
            ">;"
        }
    .end annotation
.end field

.field private mStringBlocks:[Landroid/content/res/StringBlock;

.field private final mValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    .line 80
    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    .line 768
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.baidu.BaiduMap"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.baidu.appsearch"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.baidu.searchbox"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.baidu.browser.apps"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.baidu.baidulife"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.baidu.hao123"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.ting.mp3.android"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cn.opda.a.phonoalbumshoushou"

    aput-object v2, v0, v1

    sput-object v0, Landroid/content/res/AssetManager;->OEM_PKGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 91
    iput v1, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 92
    iput-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 1102
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/AssetManager;->mDpi:I

    .line 107
    monitor-enter p0

    .line 112
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->init()V

    .line 114
    invoke-static {}, Landroid/content/ThemeDefine;->getIconPath()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/AssetManager;->mIconPath:Ljava/util/HashMap;

    .line 118
    invoke-static {}, Landroid/content/res/AssetManager;->ensureSystemAssets()V

    .line 119
    monitor-exit p0

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private constructor <init>(Z)V
    .locals 2
    .parameter "isSystem"

    .prologue
    const/4 v1, 0x1

    .line 132
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 91
    iput v1, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 92
    iput-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 1102
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/AssetManager;->mDpi:I

    .line 139
    invoke-direct {p0}, Landroid/content/res/AssetManager;->init()V

    .line 141
    invoke-static {}, Landroid/content/ThemeDefine;->getIconPath()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/AssetManager;->mIconPath:Ljava/util/HashMap;

    .line 145
    return-void
.end method

.method static synthetic access$200(Landroid/content/res/AssetManager;I)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getAssetLength(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Landroid/content/res/AssetManager;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->readAssetChar(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/content/res/AssetManager;I)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getAssetRemainingLength(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Landroid/content/res/AssetManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->destroyAsset(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/content/res/AssetManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->decRefsLocked(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/content/res/AssetManager;IJI)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->seekAsset(IJI)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Landroid/content/res/AssetManager;I[BII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->readAsset(I[BII)I

    move-result v0

    return v0
.end method

.method private final addBaiduWmCfgInSinaWeibo([B)[B
    .locals 11
    .parameter "bArray"

    .prologue
    const/16 v10, 0x22

    const/4 v7, 0x0

    const/4 v9, -0x1

    .line 333
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    .line 334
    .local v3, str:Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 335
    :cond_0
    const-string v8, "AssetManager"

    const-string/jumbo v9, "sina weibo\'s cfg.json is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v7

    .line 362
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 339
    .restart local p1
    :cond_2
    const-string v8, "\"WM\""

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 340
    .local v4, wmBeginIdx:I
    if-ne v9, v4, :cond_3

    move-object p1, v7

    goto :goto_0

    .line 342
    :cond_3
    const-string v8, "\"WM\""

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v3, v10, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 343
    if-ne v9, v4, :cond_4

    move-object p1, v7

    goto :goto_0

    .line 345
    :cond_4
    const/16 v8, 0x2c

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 346
    .local v5, wmEndIdx:I
    if-ne v9, v5, :cond_5

    const/16 v8, 0x7d

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 347
    :cond_5
    if-ne v9, v5, :cond_6

    move-object p1, v7

    goto :goto_0

    .line 349
    :cond_6
    invoke-virtual {v3, v10, v5}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    .line 350
    if-eq v9, v5, :cond_7

    if-le v4, v5, :cond_8

    :cond_7
    move-object p1, v7

    goto :goto_0

    .line 352
    :cond_8
    const/4 v7, 0x0

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, preStr:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, postStr:Ljava/lang/String;
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 356
    .local v6, wmStr:Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "9178_0005"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 358
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "9178_0005"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, outStr:Ljava/lang/String;
    const-string v7, "AssetManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "outPut String: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto/16 :goto_0
.end method

.method static final native applyStyle(IIII[I[I[I)Z
.end method

.method static final native applyThemeStyle(IIZ)V
.end method

.method static final native copyTheme(II)V
.end method

.method private final decRefsLocked(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 1094
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 1097
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    if-nez v0, :cond_0

    .line 1098
    invoke-direct {p0}, Landroid/content/res/AssetManager;->destroy()V

    .line 1100
    :cond_0
    return-void
.end method

.method private final native deleteTheme(I)V
.end method

.method private final native destroy()V
.end method

.method private final native destroyAsset(I)V
.end method

.method static final native dumpTheme(IILjava/lang/String;Ljava/lang/String;)V
.end method

.method private static ensureSystemAssets()V
    .locals 3

    .prologue
    .line 123
    sget-object v2, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 124
    :try_start_0
    sget-object v1, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    if-nez v1, :cond_0

    .line 125
    new-instance v0, Landroid/content/res/AssetManager;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/res/AssetManager;-><init>(Z)V

    .line 126
    .local v0, system:Landroid/content/res/AssetManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->makeStringBlocks(Z)V

    .line 127
    sput-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    .line 129
    :cond_0
    monitor-exit v2

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final findAccurateRes(Landroid/util/TypedValue;Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;
    .locals 6
    .parameter "value"
    .parameter "folderPath"
    .parameter "fileName"
    .parameter "isIcon"

    .prologue
    .line 1108
    const/4 v2, 0x0

    .line 1109
    .local v2, result:Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1111
    .local v4, tempPath:Ljava/lang/StringBuffer;
    iget v5, p0, Landroid/content/res/AssetManager;->mDpi:I

    sparse-switch v5, :sswitch_data_0

    .line 1122
    :goto_0
    const-string v1, ""

    .line 1123
    .local v1, realFile:Ljava/lang/String;
    if-nez p4, :cond_2

    .line 1124
    const-string v5, "/"

    invoke-virtual {p3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1125
    .local v0, lastIndex:I
    if-ltz v0, :cond_0

    .line 1126
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1131
    .end local v0           #lastIndex:I
    :cond_0
    :goto_1
    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1132
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1133
    new-instance v3, Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1134
    .local v3, tempFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1135
    iget v5, p0, Landroid/content/res/AssetManager;->mDpi:I

    iput v5, p1, Landroid/util/TypedValue;->density:I

    .line 1136
    move-object v2, v3

    .line 1139
    .end local v3           #tempFile:Ljava/io/File;
    :cond_1
    return-object v2

    .line 1113
    .end local v1           #realFile:Ljava/lang/String;
    :sswitch_0
    const-string v5, "/res/drawable-xhdpi/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1116
    :sswitch_1
    const-string v5, "/res/drawable-hdpi/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1119
    :sswitch_2
    const-string v5, "/res/drawable-xxhdpi/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1129
    .restart local v1       #realFile:Ljava/lang/String;
    :cond_2
    move-object v1, p3

    goto :goto_1

    .line 1111
    nop

    :sswitch_data_0
    .sparse-switch
        0xf0 -> :sswitch_1
        0x140 -> :sswitch_0
        0x1e0 -> :sswitch_2
    .end sparse-switch
.end method

.method private final native getArrayStringInfo(I)[I
.end method

.method private final native getArrayStringResource(I)[Ljava/lang/String;
.end method

.method public static final native getAssetAllocations()Ljava/lang/String;
.end method

.method private final native getAssetLength(I)J
.end method

.method private final native getAssetRemainingLength(I)J
.end method

.method private getDecodeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fileName"

    .prologue
    .line 817
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final native getGlobalAssetCount()I
.end method

.method public static final native getGlobalAssetManagerCount()I
.end method

.method private final native getNativeStringBlock(I)I
.end method

.method private getNewFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "filename"

    .prologue
    const/4 v3, 0x3

    .line 825
    const/4 v0, 0x0

    .line 827
    .local v0, file:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/channel_files/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getNewFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 828
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 829
    const-string v1, "AssetManager"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AssetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNewFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/AssetManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v1, v0

    .line 838
    :goto_0
    return-object v1

    .line 833
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/etc/channel_files/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getNewFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 834
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 835
    const-string v1, "AssetManager"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "AssetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNewFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/AssetManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v1, v0

    .line 836
    goto :goto_0

    .line 838
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getNewFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "filename"

    .prologue
    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 796
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/content/res/AssetManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 802
    .local v2, len:I
    iget-object v3, p0, Landroid/content/res/AssetManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 803
    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 804
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v3, v4, :cond_0

    .line 805
    add-int/lit8 v3, v1, 0x1

    const-string v4, "_"

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 808
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/content/res/AssetManager;->getDecodeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getNewInputFileStream(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 3
    .parameter "filename"

    .prologue
    .line 846
    iget-object v2, p0, Landroid/content/res/AssetManager;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/content/res/AssetManager;->isNeedHookPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 847
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getNewFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 848
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 850
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    .end local v1           #file:Ljava/io/File;
    :goto_0
    return-object v2

    .line 851
    .restart local v1       #file:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 852
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 856
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v1           #file:Ljava/io/File;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private final native getStringBlockCount()I
.end method

.method public static getSystem()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Landroid/content/res/AssetManager;->ensureSystemAssets()V

    .line 154
    sget-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method private final hookAssetManagerOpen(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 9
    .parameter "fileName"
    .parameter "accessMode"

    .prologue
    const/4 v4, 0x0

    .line 368
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->isSinaWeiboCfg(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 370
    :try_start_0
    const-string v3, "AssetManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sina weibo cfg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->openAsset(Ljava/lang/String;I)I

    move-result v0

    .line 372
    .local v0, asset:I
    if-eqz v0, :cond_1

    .line 373
    new-instance v1, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;ILandroid/content/res/AssetManager$1;)V

    .line 374
    .local v1, res:Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/content/res/AssetManager;->incRefsLocked(I)V

    .line 375
    #getter for: Landroid/content/res/AssetManager$AssetInputStream;->mLength:J
    invoke-static {v1}, Landroid/content/res/AssetManager$AssetInputStream;->access$100(Landroid/content/res/AssetManager$AssetInputStream;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_0

    .line 376
    #getter for: Landroid/content/res/AssetManager$AssetInputStream;->mLength:J
    invoke-static {v1}, Landroid/content/res/AssetManager$AssetInputStream;->access$100(Landroid/content/res/AssetManager$AssetInputStream;)J

    move-result-wide v5

    long-to-int v3, v5

    new-array v2, v3, [B

    .line 377
    .local v2, resArray:[B
    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager$AssetInputStream;->read([B)I

    .line 378
    invoke-direct {p0, v2}, Landroid/content/res/AssetManager;->addBaiduWmCfgInSinaWeibo([B)[B

    move-result-object v2

    .line 380
    if-eqz v2, :cond_0

    .line 381
    invoke-virtual {v1}, Landroid/content/res/AssetManager$AssetInputStream;->close()V

    .line 382
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 393
    .end local v0           #asset:I
    .end local v1           #res:Landroid/content/res/AssetManager$AssetInputStream;
    .end local v2           #resArray:[B
    :goto_0
    return-object v3

    .line 386
    .restart local v0       #asset:I
    .restart local v1       #res:Landroid/content/res/AssetManager$AssetInputStream;
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/AssetManager$AssetInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #asset:I
    .end local v1           #res:Landroid/content/res/AssetManager$AssetInputStream;
    :cond_1
    :goto_1
    move-object v3, v4

    .line 393
    goto :goto_0

    .line 388
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private final incRefsLocked(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 1087
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 1088
    return-void
.end method

.method private final native init()V
.end method

.method private isNeedHookPackage(Ljava/lang/String;)Z
    .locals 5
    .parameter "pkg"

    .prologue
    .line 780
    sget-object v0, Landroid/content/res/AssetManager;->OEM_PKGS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 781
    .local v3, s:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 782
    const/4 v4, 0x1

    .line 785
    .end local v3           #s:Ljava/lang/String;
    :goto_1
    return v4

    .line 780
    .restart local v3       #s:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 785
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private final isSinaWeiboCfg(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileName"

    .prologue
    .line 322
    if-eqz p1, :cond_0

    const-string v1, "cfg.json"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    const/high16 v1, 0x7f01

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, pkgName:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "com.sina.weibo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    const/4 v1, 0x1

    .line 329
    .end local v0           #pkgName:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final native loadResourceBagValue(IILandroid/util/TypedValue;Z)I
.end method

.method private final native loadResourceValue(ISLandroid/util/TypedValue;Z)I
.end method

.method static final native loadThemeAttributeValue(IILandroid/util/TypedValue;Z)I
.end method

.method private final native newTheme()I
.end method

.method private final native openAsset(Ljava/lang/String;I)I
.end method

.method private final native openAssetFd(Ljava/lang/String;[J)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private final openIconAsset(Landroid/util/TypedValue;Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/InputStream;
    .locals 9
    .parameter "value"
    .parameter "fileName"
    .parameter "packageName"
    .parameter "isIcon"

    .prologue
    .line 1144
    const/4 v3, 0x0

    .line 1148
    .local v3, inputStream:Ljava/io/InputStream;
    if-eqz p2, :cond_0

    :try_start_0
    const-string v8, ""

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1150
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "/data/data/com.baidu.thememanager.ui/files"

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1152
    .local v7, sb:Ljava/lang/StringBuffer;
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1153
    if-eqz p4, :cond_1

    const-string v8, "icons"

    :goto_0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1154
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1156
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8, p2, p4}, Landroid/content/res/AssetManager;->findAccurateRes(Landroid/util/TypedValue;Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 1157
    .local v0, accurateFile:Ljava/io/File;
    if-nez v0, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1159
    .local v2, file:Ljava/io/File;
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1160
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v3           #inputStream:Ljava/io/InputStream;
    .local v4, inputStream:Ljava/io/InputStream;
    move-object v3, v4

    .line 1182
    .end local v0           #accurateFile:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #inputStream:Ljava/io/InputStream;
    .end local v7           #sb:Ljava/lang/StringBuffer;
    .end local p3
    .restart local v3       #inputStream:Ljava/io/InputStream;
    :cond_0
    :goto_2
    return-object v3

    .restart local v7       #sb:Ljava/lang/StringBuffer;
    .restart local p3
    :cond_1
    move-object v8, p3

    .line 1153
    goto :goto_0

    .restart local v0       #accurateFile:Ljava/io/File;
    :cond_2
    move-object v2, v0

    .line 1157
    goto :goto_1

    .line 1163
    .restart local v2       #file:Ljava/io/File;
    :cond_3
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v8, "/system/etc/baidu/theme"

    invoke-direct {v6, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1164
    .local v6, ovlPath:Ljava/lang/StringBuffer;
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1165
    if-eqz p4, :cond_4

    const-string p3, "icons"

    .end local p3
    :cond_4
    invoke-virtual {v6, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1166
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1167
    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1168
    new-instance v5, Ljava/io/File;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1169
    .local v5, ovlFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1170
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3           #inputStream:Ljava/io/InputStream;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    goto :goto_2

    .line 1176
    .end local v0           #accurateFile:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v5           #ovlFile:Ljava/io/File;
    .end local v6           #ovlPath:Ljava/lang/StringBuffer;
    .end local v7           #sb:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 1177
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 1178
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 1179
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private native openNonAssetFdNative(ILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private final native openNonAssetNative(ILjava/lang/String;I)I
.end method

.method private final native openXmlAssetNative(ILjava/lang/String;)I
.end method

.method private final native readAsset(I[BII)I
.end method

.method private final native readAssetChar(I)I
.end method

.method private final native seekAsset(IJI)J
.end method


# virtual methods
.method public final native addAssetPath(Ljava/lang/String;)I
.end method

.method public final addAssetPaths([Ljava/lang/String;)[I
    .locals 3
    .parameter "paths"

    .prologue
    .line 946
    if-nez p1, :cond_1

    .line 947
    const/4 v0, 0x0

    .line 955
    :cond_0
    return-object v0

    .line 950
    :cond_1
    array-length v2, p1

    new-array v0, v2, [I

    .line 951
    .local v0, cookies:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 952
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 951
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 161
    monitor-enter p0

    .line 164
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/content/res/AssetManager;->decRefsLocked(I)V

    .line 168
    :cond_0
    monitor-exit p0

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final createTheme()I
    .locals 3

    .prologue
    .line 731
    monitor-enter p0

    .line 732
    :try_start_0
    iget-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v1, :cond_0

    .line 733
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Assetmanager has been closed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 738
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 735
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->newTheme()I

    move-result v0

    .line 736
    .local v0, res:I
    invoke-direct {p0, v0}, Landroid/content/res/AssetManager;->incRefsLocked(I)V

    .line 737
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method final ensureStringBlocks()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    if-nez v0, :cond_1

    .line 274
    monitor-enter p0

    .line 275
    :try_start_0
    iget-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    if-nez v0, :cond_0

    .line 276
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->makeStringBlocks(Z)V

    .line 278
    :cond_0
    monitor-exit p0

    .line 280
    :cond_1
    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 759
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 763
    return-void

    .line 761
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method final native getArrayIntResource(I)[I
.end method

.method final native getArraySize(I)I
.end method

.method public final native getCookieName(I)Ljava/lang/String;
.end method

.method public final native getLocales()[Ljava/lang/String;
.end method

.method final getPooledString(II)Ljava/lang/CharSequence;
    .locals 2
    .parameter "block"
    .parameter "id"

    .prologue
    .line 301
    iget-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method final getResourceBagText(II)Ljava/lang/CharSequence;
    .locals 4
    .parameter "ident"
    .parameter "bagEntryId"

    .prologue
    .line 194
    monitor-enter p0

    .line 195
    :try_start_0
    iget-object v1, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 196
    .local v1, tmpValue:Landroid/util/TypedValue;
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/content/res/AssetManager;->loadResourceBagValue(IILandroid/util/TypedValue;Z)I

    move-result v0

    .line 197
    .local v0, block:I
    if-ltz v0, :cond_1

    .line 198
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 199
    iget-object v2, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v2, v2, v0

    iget v3, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v3}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit p0

    .line 204
    :goto_0
    return-object v2

    .line 201
    :cond_0
    invoke-virtual {v1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit p0

    goto :goto_0

    .line 203
    .end local v0           #block:I
    .end local v1           #tmpValue:Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #block:I
    .restart local v1       #tmpValue:Landroid/util/TypedValue;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    const/4 v2, 0x0

    goto :goto_0
.end method

.method final native getResourceEntryName(I)Ljava/lang/String;
.end method

.method final native getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final native getResourceName(I)Ljava/lang/String;
.end method

.method final native getResourcePackageName(I)Ljava/lang/String;
.end method

.method final getResourceStringArray(I)[Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 213
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getArrayStringResource(I)[Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, retArray:[Ljava/lang/String;
    return-object v0
.end method

.method final getResourceText(I)Ljava/lang/CharSequence;
    .locals 4
    .parameter "ident"

    .prologue
    .line 176
    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v1, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 178
    .local v1, tmpValue:Landroid/util/TypedValue;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v1, v3}, Landroid/content/res/AssetManager;->loadResourceValue(ISLandroid/util/TypedValue;Z)I

    move-result v0

    .line 179
    .local v0, block:I
    if-ltz v0, :cond_1

    .line 180
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 181
    iget-object v2, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v2, v2, v0

    iget v3, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v3}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit p0

    .line 186
    :goto_0
    return-object v2

    .line 183
    :cond_0
    invoke-virtual {v1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit p0

    goto :goto_0

    .line 185
    .end local v0           #block:I
    .end local v1           #tmpValue:Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #block:I
    .restart local v1       #tmpValue:Landroid/util/TypedValue;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    const/4 v2, 0x0

    goto :goto_0
.end method

.method final getResourceTextArray(I)[Ljava/lang/CharSequence;
    .locals 9
    .parameter "id"

    .prologue
    .line 240
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getArrayStringInfo(I)[I

    move-result-object v5

    .line 241
    .local v5, rawInfoArray:[I
    array-length v6, v5

    .line 242
    .local v6, rawInfoArrayLen:I
    div-int/lit8 v3, v6, 0x2

    .line 245
    .local v3, infoArrayLen:I
    new-array v7, v3, [Ljava/lang/CharSequence;

    .line 246
    .local v7, retArray:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 247
    aget v0, v5, v1

    .line 248
    .local v0, block:I
    add-int/lit8 v8, v1, 0x1

    aget v2, v5, v8

    .line 249
    .local v2, index:I
    if-ltz v2, :cond_0

    iget-object v8, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v8, v8, v0

    invoke-virtual {v8, v2}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v8

    :goto_1
    aput-object v8, v7, v4

    .line 246
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 249
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 251
    .end local v0           #block:I
    .end local v2           #index:I
    :cond_1
    return-object v7
.end method

.method final native getResourceTypeName(I)Ljava/lang/String;
.end method

.method final getResourceValue(IILandroid/util/TypedValue;Z)Z
    .locals 4
    .parameter "ident"
    .parameter "density"
    .parameter "outValue"
    .parameter "resolveRefs"

    .prologue
    const/4 v1, 0x1

    .line 223
    int-to-short v2, p2

    invoke-direct {p0, p1, v2, p3, p4}, Landroid/content/res/AssetManager;->loadResourceValue(ISLandroid/util/TypedValue;Z)I

    move-result v0

    .line 224
    .local v0, block:I
    if-ltz v0, :cond_1

    .line 225
    iget v2, p3, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 231
    :goto_0
    return v1

    .line 228
    :cond_0
    iget-object v2, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v2, v2, v0

    iget v3, p3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v3}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_0

    .line 231
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final getThemeValue(IILandroid/util/TypedValue;Z)Z
    .locals 5
    .parameter "theme"
    .parameter "ident"
    .parameter "outValue"
    .parameter "resolveRefs"

    .prologue
    const/4 v2, 0x1

    .line 256
    invoke-static {p1, p2, p3, p4}, Landroid/content/res/AssetManager;->loadThemeAttributeValue(IILandroid/util/TypedValue;Z)I

    move-result v0

    .line 257
    .local v0, block:I
    if-ltz v0, :cond_2

    .line 258
    iget v3, p3, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 269
    :goto_0
    return v2

    .line 261
    :cond_0
    iget-object v1, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 262
    .local v1, blocks:[Landroid/content/res/StringBlock;
    if-nez v1, :cond_1

    .line 263
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->ensureStringBlocks()V

    .line 264
    iget-object v1, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 266
    :cond_1
    aget-object v3, v1, v0

    iget v4, p3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v3, v4}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_0

    .line 269
    .end local v1           #blocks:[Landroid/content/res/StringBlock;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final native isUpToDate()Z
.end method

.method public final native list(Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final makeStringBlocks(Z)V
    .locals 7
    .parameter "copyFromSystem"

    .prologue
    .line 283
    if-eqz p1, :cond_0

    sget-object v3, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    iget-object v3, v3, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    array-length v2, v3

    .line 284
    .local v2, sysNum:I
    :goto_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->getStringBlockCount()I

    move-result v1

    .line 285
    .local v1, num:I
    new-array v3, v1, [Landroid/content/res/StringBlock;

    iput-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 288
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 289
    if-ge v0, v2, :cond_1

    .line 290
    iget-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    sget-object v4, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    iget-object v4, v4, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v4, v4, v0

    aput-object v4, v3, v0

    .line 288
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 283
    .end local v0           #i:I
    .end local v1           #num:I
    .end local v2           #sysNum:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 292
    .restart local v0       #i:I
    .restart local v1       #num:I
    .restart local v2       #sysNum:I
    :cond_1
    iget-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    new-instance v4, Landroid/content/res/StringBlock;

    invoke-direct {p0, v0}, Landroid/content/res/AssetManager;->getNativeStringBlock(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/content/res/StringBlock;-><init>(IZ)V

    aput-object v4, v3, v0

    goto :goto_2

    .line 295
    :cond_2
    return-void
.end method

.method public final open(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final open(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 7
    .parameter "fileName"
    .parameter "accessMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    monitor-enter p0

    .line 418
    :try_start_0
    iget-boolean v4, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v4, :cond_0

    .line 419
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Assetmanager has been closed"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 442
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 423
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->hookAssetManagerOpen(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    .line 424
    .local v1, hookResult:Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 425
    monitor-exit p0

    .line 440
    .end local v1           #hookResult:Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 430
    .restart local v1       #hookResult:Ljava/io/InputStream;
    :cond_1
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getNewInputFileStream(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 431
    .local v3, stream:Ljava/io/InputStream;
    if-eqz v3, :cond_2

    .line 432
    monitor-exit p0

    move-object v1, v3

    goto :goto_0

    .line 436
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->openAsset(Ljava/lang/String;I)I

    move-result v0

    .line 437
    .local v0, asset:I
    if-eqz v0, :cond_3

    .line 438
    new-instance v2, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v4}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;ILandroid/content/res/AssetManager$1;)V

    .line 439
    .local v2, res:Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/content/res/AssetManager;->incRefsLocked(I)V

    .line 440
    monitor-exit p0

    move-object v1, v2

    goto :goto_0

    .line 442
    .end local v2           #res:Landroid/content/res/AssetManager$AssetInputStream;
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Asset file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public final openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    monitor-enter p0

    .line 449
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v0, :cond_0

    .line 450
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Assetmanager has been closed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 452
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    invoke-direct {p0, p1, v0}, Landroid/content/res/AssetManager;->openAssetFd(Ljava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 453
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    .line 454
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    iget-object v2, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    monitor-exit p0

    return-object v0

    .line 456
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final openNonAsset(ILjava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "cookie"
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 511
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;
    .locals 6
    .parameter "cookie"
    .parameter "fileName"
    .parameter "accessMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    monitor-enter p0

    .line 525
    :try_start_0
    iget-boolean v3, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v3, :cond_0

    .line 526
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Assetmanager has been closed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 540
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 529
    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Landroid/content/res/AssetManager;->getNewInputFileStream(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 530
    .local v2, stream:Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 531
    monitor-exit p0

    .line 538
    .end local v2           #stream:Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 534
    .restart local v2       #stream:Ljava/io/InputStream;
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/AssetManager;->openNonAssetNative(ILjava/lang/String;I)I

    move-result v0

    .line 535
    .local v0, asset:I
    if-eqz v0, :cond_2

    .line 536
    new-instance v1, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;ILandroid/content/res/AssetManager$1;)V

    .line 537
    .local v1, res:Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/content/res/AssetManager;->incRefsLocked(I)V

    .line 538
    monitor-exit p0

    move-object v2, v1

    goto :goto_0

    .line 540
    .end local v1           #res:Landroid/content/res/AssetManager$AssetInputStream;
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asset absolute file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final openNonAsset(Landroid/util/TypedValue;Ljava/lang/String;IIZ)Ljava/io/InputStream;
    .locals 13
    .parameter "value"
    .parameter "fileName"
    .parameter "id"
    .parameter "accessMode"
    .parameter "isIcon"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 556
    iget v2, p1, Landroid/util/TypedValue;->assetCookie:I

    .line 557
    .local v2, cookie:I
    monitor-enter p0

    .line 558
    :try_start_0
    iget-boolean v10, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v10, :cond_0

    .line 559
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "Assetmanager has been closed"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 639
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 562
    :cond_0
    :try_start_1
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v7

    .line 563
    .local v7, packageName:Ljava/lang/String;
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 569
    .local v9, resourceText:Ljava/lang/String;
    const/4 v1, 0x0

    .line 571
    .local v1, asset:I
    const/high16 v10, 0x7000

    move/from16 v0, p3

    if-ge v0, v10, :cond_5

    .line 572
    ushr-int/lit8 v6, p3, 0x18

    .line 574
    .local v6, packageId:I
    const/4 v10, 0x1

    if-ne v6, v10, :cond_2

    .line 575
    const-string v7, "framework-res"

    .line 579
    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 580
    .local v4, is:Ljava/io/InputStream;
    const/4 v10, 0x0

    invoke-direct {p0, p1, p2, v7, v10}, Landroid/content/res/AssetManager;->openIconAsset(Landroid/util/TypedValue;Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v4

    .line 581
    if-eqz v4, :cond_3

    .line 582
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-direct {p0, v10}, Landroid/content/res/AssetManager;->incRefsLocked(I)V

    .line 583
    monitor-exit p0

    .line 637
    .end local v4           #is:Ljava/io/InputStream;
    .end local v6           #packageId:I
    :goto_1
    return-object v4

    .line 576
    .restart local v6       #packageId:I
    :cond_2
    const/4 v10, 0x5

    if-ne v6, v10, :cond_1

    .line 577
    const-string v7, "framework-yi-res"

    goto :goto_0

    .line 585
    .restart local v4       #is:Ljava/io/InputStream;
    :cond_3
    move/from16 v0, p4

    invoke-direct {p0, v2, p2, v0}, Landroid/content/res/AssetManager;->openNonAssetNative(ILjava/lang/String;I)I

    move-result v1

    .line 634
    .end local v6           #packageId:I
    :cond_4
    if-eqz v1, :cond_b

    .line 635
    new-instance v8, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v10, 0x0

    invoke-direct {v8, p0, v1, v10}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;ILandroid/content/res/AssetManager$1;)V

    .line 636
    .local v8, res:Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-direct {p0, v10}, Landroid/content/res/AssetManager;->incRefsLocked(I)V

    .line 637
    monitor-exit p0

    move-object v4, v8

    goto :goto_1

    .line 587
    .end local v4           #is:Ljava/io/InputStream;
    .end local v8           #res:Landroid/content/res/AssetManager$AssetInputStream;
    :cond_5
    const/4 v4, 0x0

    .line 588
    .restart local v4       #is:Ljava/io/InputStream;
    if-eqz p5, :cond_8

    .line 590
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 592
    .local v3, iconText:Ljava/lang/String;
    if-eqz v3, :cond_7

    iget-object v10, p0, Landroid/content/res/AssetManager;->mIconPath:Ljava/util/HashMap;

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 593
    iget-object v10, p0, Landroid/content/res/AssetManager;->mIconPath:Ljava/util/HashMap;

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 598
    .local v5, pack:Ljava/lang/String;
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {p0, p1, v10, v7, v11}, Landroid/content/res/AssetManager;->openIconAsset(Landroid/util/TypedValue;Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v4

    .line 600
    if-nez v4, :cond_6

    .line 601
    move/from16 v0, p4

    invoke-virtual {p0, v2, p2, v0}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v4

    .line 604
    :cond_6
    if-eqz v4, :cond_4

    .line 605
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-direct {p0, v10}, Landroid/content/res/AssetManager;->incRefsLocked(I)V

    .line 606
    monitor-exit p0

    goto :goto_1

    .line 595
    .end local v5           #pack:Ljava/lang/String;
    :cond_7
    move-object v5, v7

    .restart local v5       #pack:Ljava/lang/String;
    goto :goto_2

    .line 609
    .end local v3           #iconText:Ljava/lang/String;
    .end local v5           #pack:Ljava/lang/String;
    :cond_8
    const-string v10, "com.android.contacts"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 612
    const-string v10, "com.baidu.dialpad"

    const/4 v11, 0x0

    invoke-direct {p0, p1, p2, v10, v11}, Landroid/content/res/AssetManager;->openIconAsset(Landroid/util/TypedValue;Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v4

    .line 614
    if-eqz v4, :cond_9

    .line 615
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-direct {p0, v10}, Landroid/content/res/AssetManager;->incRefsLocked(I)V

    .line 616
    monitor-exit p0

    goto/16 :goto_1

    .line 620
    :cond_9
    const/4 v10, 0x0

    invoke-direct {p0, p1, p2, v7, v10}, Landroid/content/res/AssetManager;->openIconAsset(Landroid/util/TypedValue;Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v4

    .line 622
    if-nez v4, :cond_a

    .line 623
    move/from16 v0, p4

    invoke-virtual {p0, v2, p2, v0}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v4

    .line 626
    :cond_a
    if-eqz v4, :cond_4

    .line 627
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-direct {p0, v10}, Landroid/content/res/AssetManager;->incRefsLocked(I)V

    .line 628
    monitor-exit p0

    goto/16 :goto_1

    .line 639
    :cond_b
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 640
    new-instance v10, Ljava/io/FileNotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Asset absolute file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public final openNonAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final openNonAsset(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 1
    .parameter "fileName"
    .parameter "accessMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .parameter "cookie"
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 651
    monitor-enter p0

    .line 652
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v0, :cond_0

    .line 653
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Assetmanager has been closed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 655
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    invoke-direct {p0, p1, p2, v0}, Landroid/content/res/AssetManager;->openNonAssetFdNative(ILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 657
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    .line 658
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    iget-object v2, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    monitor-exit p0

    return-object v0

    .line 660
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 661
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset absolute file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final openNonAssetFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 646
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method final openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;
    .locals 5
    .parameter "cookie"
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 710
    monitor-enter p0

    .line 711
    :try_start_0
    iget-boolean v2, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v2, :cond_0

    .line 712
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Assetmanager has been closed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 720
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 714
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->openXmlAssetNative(ILjava/lang/String;)I

    move-result v1

    .line 715
    .local v1, xmlBlock:I
    if-eqz v1, :cond_1

    .line 716
    new-instance v0, Landroid/content/res/XmlBlock;

    invoke-direct {v0, p0, v1}, Landroid/content/res/XmlBlock;-><init>(Landroid/content/res/AssetManager;I)V

    .line 717
    .local v0, res:Landroid/content/res/XmlBlock;
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/content/res/AssetManager;->incRefsLocked(I)V

    .line 718
    monitor-exit p0

    return-object v0

    .line 720
    .end local v0           #res:Landroid/content/res/XmlBlock;
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 721
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset XML file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method final openXmlBlockAsset(Ljava/lang/String;)Landroid/content/res/XmlBlock;
    .locals 1
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 697
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    return-object v0
.end method

.method public final openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 2
    .parameter "cookie"
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 682
    invoke-virtual {p0, p1, p2}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    .line 683
    .local v0, block:Landroid/content/res/XmlBlock;
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 684
    .local v1, rp:Landroid/content/res/XmlResourceParser;
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->close()V

    .line 685
    return-object v1
.end method

.method public final openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 1
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 671
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method final releaseTheme(I)V
    .locals 1
    .parameter "theme"

    .prologue
    .line 742
    monitor-enter p0

    .line 743
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->deleteTheme(I)V

    .line 744
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->decRefsLocked(I)V

    .line 745
    monitor-exit p0

    .line 746
    return-void

    .line 745
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final native retrieveArray(I[I)I
.end method

.method final native retrieveAttributes(I[I[I[I)Z
.end method

.method public final native setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V
.end method

.method setDensityDpi(I)V
    .locals 0
    .parameter "dpi"

    .prologue
    .line 1104
    iput p1, p0, Landroid/content/res/AssetManager;->mDpi:I

    .line 1105
    return-void
.end method

.method public final native setLocale(Ljava/lang/String;)V
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "pkg"

    .prologue
    .line 865
    iput-object p1, p0, Landroid/content/res/AssetManager;->mPackageName:Ljava/lang/String;

    .line 866
    return-void
.end method

.method xmlBlockGone(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 725
    monitor-enter p0

    .line 726
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->decRefsLocked(I)V

    .line 727
    monitor-exit p0

    .line 728
    return-void

    .line 727
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
