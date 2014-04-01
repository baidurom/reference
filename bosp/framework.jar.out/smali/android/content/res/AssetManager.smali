.class public final Landroid/content/res/AssetManager;
.super Ljava/lang/Object;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/AssetManager$AssetInputStream;
    }
.end annotation


# static fields
.field public static final ACCESS_BUFFER:I = 0x3

.field public static final ACCESS_RANDOM:I = 0x1

.field public static final ACCESS_STREAMING:I = 0x2

.field public static final ACCESS_UNKNOWN:I = 0x0

.field private static final DEBUG_REFS:Z = false

.field static FILENAME_COLUMN:Ljava/lang/String; = null

.field private static final OEM_PKGS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field static PKG_COLUMN:Ljava/lang/String; = null

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
.field mContext:Landroid/content/Context;

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

.field mObserver:Landroid/database/ContentObserver;

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

.field mUri:Landroid/net/Uri;

.field private final mValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    .line 91
    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    .line 787
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/res/AssetManager;->OEM_PKGS:Ljava/util/HashMap;

    .line 880
    const-string/jumbo v0, "pkg"

    sput-object v0, Landroid/content/res/AssetManager;->PKG_COLUMN:Ljava/lang/String;

    .line 881
    const-string v0, "file"

    sput-object v0, Landroid/content/res/AssetManager;->FILENAME_COLUMN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 102
    iput v1, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 103
    iput-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 879
    const-string v0, "content://com.baidu.bsy.channel"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/AssetManager;->mUri:Landroid/net/Uri;

    .line 1204
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/AssetManager;->mDpi:I

    .line 116
    monitor-enter p0

    .line 121
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->init()V

    .line 123
    invoke-static {}, Landroid/content/ThemeDefine;->getIconPath()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/AssetManager;->mIconPath:Ljava/util/HashMap;

    .line 127
    invoke-static {}, Landroid/content/res/AssetManager;->ensureSystemAssets()V

    .line 128
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    const-string v0, "/system/framework/mediatek-res.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 130
    const-string v0, "/system/framework/framework-res-yi.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 131
    return-void

    .line 128
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private constructor <init>(Z)V
    .locals 2
    .parameter "isSystem"

    .prologue
    const/4 v1, 0x1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 102
    iput v1, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 103
    iput-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 879
    const-string v0, "content://com.baidu.bsy.channel"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/AssetManager;->mUri:Landroid/net/Uri;

    .line 1204
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/AssetManager;->mDpi:I

    .line 150
    invoke-direct {p0}, Landroid/content/res/AssetManager;->init()V

    .line 152
    invoke-static {}, Landroid/content/ThemeDefine;->getIconPath()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/AssetManager;->mIconPath:Ljava/util/HashMap;

    .line 154
    const-string v0, "/system/framework/mediatek-res.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 155
    const-string v0, "/system/framework/framework-res-yi.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method static synthetic access$1000(Landroid/content/res/AssetManager;I[BII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->readAsset(I[BII)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/content/res/AssetManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/res/AssetManager;->readChannelPkgsBackgroud()V

    return-void
.end method

.method static synthetic access$300(Landroid/content/res/AssetManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/res/AssetManager;->readChannelPkgs()V

    return-void
.end method

.method static synthetic access$400(Landroid/content/res/AssetManager;I)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getAssetLength(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Landroid/content/res/AssetManager;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->readAssetChar(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/content/res/AssetManager;I)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getAssetRemainingLength(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Landroid/content/res/AssetManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->destroyAsset(I)V

    return-void
.end method

.method static synthetic access$800(Landroid/content/res/AssetManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->decRefsLocked(I)V

    return-void
.end method

.method static synthetic access$900(Landroid/content/res/AssetManager;IJI)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->seekAsset(IJI)J

    move-result-wide v0

    return-wide v0
.end method

.method private final addBaiduWmCfgInSinaWeibo([B)[B
    .locals 11
    .parameter "bArray"

    .prologue
    const/16 v10, 0x22

    const/4 v7, 0x0

    const/4 v9, -0x1

    .line 349
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    .line 350
    .local v3, str:Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 351
    :cond_0
    const-string v8, "AssetManager"

    const-string/jumbo v9, "sina weibo\'s cfg.json is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v7

    .line 378
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 355
    .restart local p1
    :cond_2
    const-string v8, "\"WM\""

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 356
    .local v4, wmBeginIdx:I
    if-ne v9, v4, :cond_3

    move-object p1, v7

    goto :goto_0

    .line 358
    :cond_3
    const-string v8, "\"WM\""

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v3, v10, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 359
    if-ne v9, v4, :cond_4

    move-object p1, v7

    goto :goto_0

    .line 361
    :cond_4
    const/16 v8, 0x2c

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 362
    .local v5, wmEndIdx:I
    if-ne v9, v5, :cond_5

    const/16 v8, 0x7d

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 363
    :cond_5
    if-ne v9, v5, :cond_6

    move-object p1, v7

    goto :goto_0

    .line 365
    :cond_6
    invoke-virtual {v3, v10, v5}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    .line 366
    if-eq v9, v5, :cond_7

    if-le v4, v5, :cond_8

    :cond_7
    move-object p1, v7

    goto :goto_0

    .line 368
    :cond_8
    const/4 v7, 0x0

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, preStr:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, postStr:Ljava/lang/String;
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 372
    .local v6, wmStr:Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "9178_0005"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 374
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

    .line 375
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

    .line 376
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
    .line 1196
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 1199
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    if-nez v0, :cond_0

    .line 1200
    invoke-direct {p0}, Landroid/content/res/AssetManager;->destroy()V

    .line 1202
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
    .line 134
    sget-object v2, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 135
    :try_start_0
    sget-object v1, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    if-nez v1, :cond_0

    .line 136
    new-instance v0, Landroid/content/res/AssetManager;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/res/AssetManager;-><init>(Z)V

    .line 137
    .local v0, system:Landroid/content/res/AssetManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->makeStringBlocks(Z)V

    .line 138
    sput-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    .line 140
    :cond_0
    monitor-exit v2

    .line 141
    return-void

    .line 140
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
    .line 1210
    const/4 v2, 0x0

    .line 1211
    .local v2, result:Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1213
    .local v4, tempPath:Ljava/lang/StringBuffer;
    iget v5, p0, Landroid/content/res/AssetManager;->mDpi:I

    sparse-switch v5, :sswitch_data_0

    .line 1224
    :goto_0
    const-string v1, ""

    .line 1225
    .local v1, realFile:Ljava/lang/String;
    if-nez p4, :cond_2

    .line 1226
    const-string v5, "/"

    invoke-virtual {p3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1227
    .local v0, lastIndex:I
    if-ltz v0, :cond_0

    .line 1228
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1233
    .end local v0           #lastIndex:I
    :cond_0
    :goto_1
    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1234
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1235
    new-instance v3, Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1236
    .local v3, tempFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1237
    iget v5, p0, Landroid/content/res/AssetManager;->mDpi:I

    iput v5, p1, Landroid/util/TypedValue;->density:I

    .line 1238
    move-object v2, v3

    .line 1241
    .end local v3           #tempFile:Ljava/io/File;
    :cond_1
    return-object v2

    .line 1215
    .end local v1           #realFile:Ljava/lang/String;
    :sswitch_0
    const-string v5, "/res/drawable-xhdpi/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1218
    :sswitch_1
    const-string v5, "/res/drawable-hdpi/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1221
    :sswitch_2
    const-string v5, "/res/drawable-xxhdpi/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1231
    .restart local v1       #realFile:Ljava/lang/String;
    :cond_2
    move-object v1, p3

    goto :goto_1

    .line 1213
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
    .line 831
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
    .locals 5
    .parameter "filename"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x3

    .line 839
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_1

    move-object v0, v1

    .line 855
    :cond_0
    :goto_0
    return-object v0

    .line 842
    :cond_1
    const/4 v0, 0x0

    .line 844
    .local v0, file:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/system/channel_files/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getNewFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 845
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 846
    const-string v1, "AssetManager"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

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

    goto :goto_0

    .line 850
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/etc/channel_files/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getNewFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 851
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 852
    const-string v1, "AssetManager"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

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

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    .line 855
    goto/16 :goto_0
.end method

.method private getNewFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "filename"

    .prologue
    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 810
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/content/res/AssetManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 816
    .local v2, len:I
    iget-object v3, p0, Landroid/content/res/AssetManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 817
    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 818
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v3, v4, :cond_0

    .line 819
    add-int/lit8 v3, v1, 0x1

    const-string v4, "_"

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 822
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
    .line 863
    iget-object v2, p0, Landroid/content/res/AssetManager;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Landroid/content/res/AssetManager;->isNeedHookPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 864
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getNewFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 865
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 867
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    .end local v1           #file:Ljava/io/File;
    :goto_0
    return-object v2

    .line 868
    .restart local v1       #file:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 869
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 873
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
    .line 165
    invoke-static {}, Landroid/content/res/AssetManager;->ensureSystemAssets()V

    .line 166
    sget-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method private final hookAssetManagerOpen(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 9
    .parameter "fileName"
    .parameter "accessMode"

    .prologue
    const/4 v4, 0x0

    .line 384
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->isSinaWeiboCfg(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 386
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

    .line 387
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->openAsset(Ljava/lang/String;I)I

    move-result v0

    .line 388
    .local v0, asset:I
    if-eqz v0, :cond_1

    .line 389
    new-instance v1, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;ILandroid/content/res/AssetManager$1;)V

    .line 390
    .local v1, res:Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/content/res/AssetManager;->incRefsLocked(I)V

    .line 391
    #getter for: Landroid/content/res/AssetManager$AssetInputStream;->mLength:J
    invoke-static {v1}, Landroid/content/res/AssetManager$AssetInputStream;->access$100(Landroid/content/res/AssetManager$AssetInputStream;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_0

    .line 392
    #getter for: Landroid/content/res/AssetManager$AssetInputStream;->mLength:J
    invoke-static {v1}, Landroid/content/res/AssetManager$AssetInputStream;->access$100(Landroid/content/res/AssetManager$AssetInputStream;)J

    move-result-wide v5

    long-to-int v3, v5

    new-array v2, v3, [B

    .line 393
    .local v2, resArray:[B
    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager$AssetInputStream;->read([B)I

    .line 394
    invoke-direct {p0, v2}, Landroid/content/res/AssetManager;->addBaiduWmCfgInSinaWeibo([B)[B

    move-result-object v2

    .line 396
    if-eqz v2, :cond_0

    .line 397
    invoke-virtual {v1}, Landroid/content/res/AssetManager$AssetInputStream;->close()V

    .line 398
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 409
    .end local v0           #asset:I
    .end local v1           #res:Landroid/content/res/AssetManager$AssetInputStream;
    .end local v2           #resArray:[B
    :goto_0
    return-object v3

    .line 402
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

    .line 409
    goto :goto_0

    .line 404
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private final incRefsLocked(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 1189
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 1190
    return-void
.end method

.method private final native init()V
.end method

.method private isNeedHookPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "pkg"
    .parameter "fileName"

    .prologue
    const/4 v3, 0x0

    .line 790
    sget-object v4, Landroid/content/res/AssetManager;->OEM_PKGS:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 791
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 799
    :cond_0
    :goto_0
    return v3

    .line 794
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 795
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 796
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private final isSinaWeiboCfg(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileName"

    .prologue
    .line 338
    if-eqz p1, :cond_0

    const-string v1, "cfg.json"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    const/high16 v1, 0x7f01

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, pkgName:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "com.sina.weibo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    const/4 v1, 0x1

    .line 345
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
    .locals 7
    .parameter "value"
    .parameter "fileName"
    .parameter "packageName"
    .parameter "isIcon"

    .prologue
    .line 1246
    const/4 v3, 0x0

    .line 1250
    .local v3, inputStream:Ljava/io/InputStream;
    if-eqz p2, :cond_1

    :try_start_0
    const-string v6, ""

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1252
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "/data/data/com.baidu.thememanager.ui/files"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1254
    .local v5, sb:Ljava/lang/StringBuffer;
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1255
    if-eqz p4, :cond_0

    const-string p3, "icons"

    .end local p3
    :cond_0
    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1256
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1258
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6, p2, p4}, Landroid/content/res/AssetManager;->findAccurateRes(Landroid/util/TypedValue;Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 1259
    .local v0, accurateFile:Ljava/io/File;
    if-nez v0, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1261
    .local v2, file:Ljava/io/File;
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1262
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3           #inputStream:Ljava/io/InputStream;
    .local v4, inputStream:Ljava/io/InputStream;
    move-object v3, v4

    .line 1272
    .end local v0           #accurateFile:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #inputStream:Ljava/io/InputStream;
    .end local v5           #sb:Ljava/lang/StringBuffer;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    :cond_1
    :goto_1
    return-object v3

    .restart local v0       #accurateFile:Ljava/io/File;
    .restart local v5       #sb:Ljava/lang/StringBuffer;
    :cond_2
    move-object v2, v0

    .line 1259
    goto :goto_0

    .line 1266
    .end local v0           #accurateFile:Ljava/io/File;
    .end local v5           #sb:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 1267
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1268
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 1269
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
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

.method private readChannelPkgs()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v2, 0x0

    .line 941
    const-string v0, "AssetManager"

    invoke-static {v0, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AssetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readChannelPkgs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_0
    sget-object v0, Landroid/content/res/AssetManager;->OEM_PKGS:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 944
    .local v8, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 945
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 946
    .local v9, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 948
    .end local v9           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    sget-object v0, Landroid/content/res/AssetManager;->OEM_PKGS:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 951
    iget-object v0, p0, Landroid/content/res/AssetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/AssetManager;->mUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 952
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 953
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 954
    sget-object v0, Landroid/content/res/AssetManager;->PKG_COLUMN:Ljava/lang/String;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 955
    .local v10, pkg:Ljava/lang/String;
    sget-object v0, Landroid/content/res/AssetManager;->FILENAME_COLUMN:Ljava/lang/String;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 956
    .local v7, file:Ljava/lang/String;
    const-string v0, "AssetManager"

    invoke-static {v0, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AssetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readChannelPkgs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :cond_2
    sget-object v0, Landroid/content/res/AssetManager;->OEM_PKGS:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 958
    .restart local v9       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v9, :cond_3

    .line 959
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 961
    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    .end local v9           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 962
    .restart local v9       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 963
    sget-object v0, Landroid/content/res/AssetManager;->OEM_PKGS:Ljava/util/HashMap;

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 966
    .end local v7           #file:Ljava/lang/String;
    .end local v9           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10           #pkg:Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 968
    :cond_5
    return-void
.end method

.method private readChannelPkgsBackgroud()V
    .locals 1

    .prologue
    .line 929
    new-instance v0, Landroid/content/res/AssetManager$2;

    invoke-direct {v0, p0}, Landroid/content/res/AssetManager$2;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v0}, Landroid/content/res/AssetManager$2;->start()V

    .line 935
    return-void
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
    .line 1048
    if-nez p1, :cond_1

    .line 1049
    const/4 v0, 0x0

    .line 1057
    :cond_0
    return-object v0

    .line 1052
    :cond_1
    array-length v2, p1

    new-array v0, v2, [I

    .line 1053
    .local v0, cookies:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1054
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 1053
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public clearContext()V
    .locals 2

    .prologue
    .line 917
    iget-object v0, p0, Landroid/content/res/AssetManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/res/AssetManager;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Landroid/content/res/AssetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/AssetManager;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 920
    :cond_0
    iget-object v0, p0, Landroid/content/res/AssetManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 921
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/AssetManager;->mContext:Landroid/content/Context;

    .line 923
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 173
    monitor-enter p0

    .line 176
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/content/res/AssetManager;->decRefsLocked(I)V

    .line 181
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/AssetManager;->mPackageName:Ljava/lang/String;

    .line 182
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->clearContext()V

    .line 184
    monitor-exit p0

    .line 185
    return-void

    .line 184
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
    .line 750
    monitor-enter p0

    .line 751
    :try_start_0
    iget-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v1, :cond_0

    .line 752
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Assetmanager has been closed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 757
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 754
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->newTheme()I

    move-result v0

    .line 755
    .local v0, res:I
    invoke-direct {p0, v0}, Landroid/content/res/AssetManager;->incRefsLocked(I)V

    .line 756
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method final ensureStringBlocks()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    if-nez v0, :cond_1

    .line 290
    monitor-enter p0

    .line 291
    :try_start_0
    iget-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    if-nez v0, :cond_0

    .line 292
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->makeStringBlocks(Z)V

    .line 294
    :cond_0
    monitor-exit p0

    .line 296
    :cond_1
    return-void

    .line 294
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
    .line 778
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 782
    return-void

    .line 780
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
    .line 317
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
    .line 210
    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v1, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 212
    .local v1, tmpValue:Landroid/util/TypedValue;
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/content/res/AssetManager;->loadResourceBagValue(IILandroid/util/TypedValue;Z)I

    move-result v0

    .line 213
    .local v0, block:I
    if-ltz v0, :cond_1

    .line 214
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 215
    iget-object v2, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v2, v2, v0

    iget v3, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v3}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit p0

    .line 220
    :goto_0
    return-object v2

    .line 217
    :cond_0
    invoke-virtual {v1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit p0

    goto :goto_0

    .line 219
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

    .line 220
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
    .line 229
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getArrayStringResource(I)[Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, retArray:[Ljava/lang/String;
    return-object v0
.end method

.method final getResourceText(I)Ljava/lang/CharSequence;
    .locals 4
    .parameter "ident"

    .prologue
    .line 192
    monitor-enter p0

    .line 193
    :try_start_0
    iget-object v1, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 194
    .local v1, tmpValue:Landroid/util/TypedValue;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v1, v3}, Landroid/content/res/AssetManager;->loadResourceValue(ISLandroid/util/TypedValue;Z)I

    move-result v0

    .line 195
    .local v0, block:I
    if-ltz v0, :cond_1

    .line 196
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 197
    iget-object v2, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v2, v2, v0

    iget v3, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v3}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit p0

    .line 202
    :goto_0
    return-object v2

    .line 199
    :cond_0
    invoke-virtual {v1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit p0

    goto :goto_0

    .line 201
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

    .line 202
    const/4 v2, 0x0

    goto :goto_0
.end method

.method final getResourceTextArray(I)[Ljava/lang/CharSequence;
    .locals 9
    .parameter "id"

    .prologue
    .line 256
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getArrayStringInfo(I)[I

    move-result-object v5

    .line 257
    .local v5, rawInfoArray:[I
    array-length v6, v5

    .line 258
    .local v6, rawInfoArrayLen:I
    div-int/lit8 v3, v6, 0x2

    .line 261
    .local v3, infoArrayLen:I
    new-array v7, v3, [Ljava/lang/CharSequence;

    .line 262
    .local v7, retArray:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 263
    aget v0, v5, v1

    .line 264
    .local v0, block:I
    add-int/lit8 v8, v1, 0x1

    aget v2, v5, v8

    .line 265
    .local v2, index:I
    if-ltz v2, :cond_0

    iget-object v8, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v8, v8, v0

    invoke-virtual {v8, v2}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v8

    :goto_1
    aput-object v8, v7, v4

    .line 262
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 265
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 267
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

    .line 239
    int-to-short v2, p2

    invoke-direct {p0, p1, v2, p3, p4}, Landroid/content/res/AssetManager;->loadResourceValue(ISLandroid/util/TypedValue;Z)I

    move-result v0

    .line 240
    .local v0, block:I
    if-ltz v0, :cond_1

    .line 241
    iget v2, p3, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 247
    :goto_0
    return v1

    .line 244
    :cond_0
    iget-object v2, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v2, v2, v0

    iget v3, p3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v3}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_0

    .line 247
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

    .line 272
    invoke-static {p1, p2, p3, p4}, Landroid/content/res/AssetManager;->loadThemeAttributeValue(IILandroid/util/TypedValue;Z)I

    move-result v0

    .line 273
    .local v0, block:I
    if-ltz v0, :cond_2

    .line 274
    iget v3, p3, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 285
    :goto_0
    return v2

    .line 277
    :cond_0
    iget-object v1, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 278
    .local v1, blocks:[Landroid/content/res/StringBlock;
    if-nez v1, :cond_1

    .line 279
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->ensureStringBlocks()V

    .line 280
    iget-object v1, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 282
    :cond_1
    aget-object v3, v1, v0

    iget v4, p3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v3, v4}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_0

    .line 285
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
    .line 299
    if-eqz p1, :cond_0

    sget-object v3, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    iget-object v3, v3, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    array-length v2, v3

    .line 300
    .local v2, sysNum:I
    :goto_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->getStringBlockCount()I

    move-result v1

    .line 301
    .local v1, num:I
    new-array v3, v1, [Landroid/content/res/StringBlock;

    iput-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 304
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 305
    if-ge v0, v2, :cond_1

    .line 306
    iget-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    sget-object v4, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    iget-object v4, v4, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v4, v4, v0

    aput-object v4, v3, v0

    .line 304
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 299
    .end local v0           #i:I
    .end local v1           #num:I
    .end local v2           #sysNum:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 308
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

    .line 311
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
    .line 332
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
    .line 433
    monitor-enter p0

    .line 434
    :try_start_0
    iget-boolean v4, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v4, :cond_0

    .line 435
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Assetmanager has been closed"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 458
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 439
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->hookAssetManagerOpen(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    .line 440
    .local v1, hookResult:Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 441
    monitor-exit p0

    .line 456
    .end local v1           #hookResult:Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 446
    .restart local v1       #hookResult:Ljava/io/InputStream;
    :cond_1
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getNewInputFileStream(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 447
    .local v3, stream:Ljava/io/InputStream;
    if-eqz v3, :cond_2

    .line 448
    monitor-exit p0

    move-object v1, v3

    goto :goto_0

    .line 452
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->openAsset(Ljava/lang/String;I)I

    move-result v0

    .line 453
    .local v0, asset:I
    if-eqz v0, :cond_3

    .line 454
    new-instance v2, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v4}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;ILandroid/content/res/AssetManager$1;)V

    .line 455
    .local v2, res:Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/content/res/AssetManager;->incRefsLocked(I)V

    .line 456
    monitor-exit p0

    move-object v1, v2

    goto :goto_0

    .line 458
    .end local v2           #res:Landroid/content/res/AssetManager$AssetInputStream;
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 459
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
    .line 464
    monitor-enter p0

    .line 465
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v0, :cond_0

    .line 466
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Assetmanager has been closed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 468
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    invoke-direct {p0, p1, v0}, Landroid/content/res/AssetManager;->openAssetFd(Ljava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 469
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    .line 470
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

    .line 472
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
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
    .line 527
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
    .line 540
    monitor-enter p0

    .line 541
    :try_start_0
    iget-boolean v3, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v3, :cond_0

    .line 542
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Assetmanager has been closed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 556
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 545
    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Landroid/content/res/AssetManager;->getNewInputFileStream(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 546
    .local v2, stream:Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 547
    monitor-exit p0

    .line 554
    .end local v2           #stream:Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 550
    .restart local v2       #stream:Ljava/io/InputStream;
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/AssetManager;->openNonAssetNative(ILjava/lang/String;I)I

    move-result v0

    .line 551
    .local v0, asset:I
    if-eqz v0, :cond_2

    .line 552
    new-instance v1, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;ILandroid/content/res/AssetManager$1;)V

    .line 553
    .local v1, res:Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/content/res/AssetManager;->incRefsLocked(I)V

    .line 554
    monitor-exit p0

    move-object v2, v1

    goto :goto_0

    .line 556
    .end local v1           #res:Landroid/content/res/AssetManager$AssetInputStream;
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 557
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
    .line 575
    iget v2, p1, Landroid/util/TypedValue;->assetCookie:I

    .line 576
    .local v2, cookie:I
    monitor-enter p0

    .line 577
    :try_start_0
    iget-boolean v10, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v10, :cond_0

    .line 578
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "Assetmanager has been closed"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 658
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 581
    :cond_0
    :try_start_1
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v7

    .line 582
    .local v7, packageName:Ljava/lang/String;
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 588
    .local v9, resourceText:Ljava/lang/String;
    const/4 v1, 0x0

    .line 590
    .local v1, asset:I
    const/high16 v10, 0x7000

    move/from16 v0, p3

    if-ge v0, v10, :cond_5

    .line 591
    ushr-int/lit8 v6, p3, 0x18

    .line 593
    .local v6, packageId:I
    const/4 v10, 0x1

    if-ne v6, v10, :cond_2

    .line 594
    const-string v7, "framework-res"

    .line 598
    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 599
    .local v4, is:Ljava/io/InputStream;
    const/4 v10, 0x0

    invoke-direct {p0, p1, p2, v7, v10}, Landroid/content/res/AssetManager;->openIconAsset(Landroid/util/TypedValue;Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v4

    .line 600
    if-eqz v4, :cond_3

    .line 601
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-direct {p0, v10}, Landroid/content/res/AssetManager;->incRefsLocked(I)V

    .line 602
    monitor-exit p0

    .line 656
    .end local v4           #is:Ljava/io/InputStream;
    .end local v6           #packageId:I
    :goto_1
    return-object v4

    .line 595
    .restart local v6       #packageId:I
    :cond_2
    const/4 v10, 0x4

    if-ne v6, v10, :cond_1

    .line 596
    const-string v7, "framework-yi-res"

    goto :goto_0

    .line 604
    .restart local v4       #is:Ljava/io/InputStream;
    :cond_3
    move/from16 v0, p4

    invoke-direct {p0, v2, p2, v0}, Landroid/content/res/AssetManager;->openNonAssetNative(ILjava/lang/String;I)I

    move-result v1

    .line 653
    .end local v6           #packageId:I
    :cond_4
    if-eqz v1, :cond_b

    .line 654
    new-instance v8, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v10, 0x0

    invoke-direct {v8, p0, v1, v10}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;ILandroid/content/res/AssetManager$1;)V

    .line 655
    .local v8, res:Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-direct {p0, v10}, Landroid/content/res/AssetManager;->incRefsLocked(I)V

    .line 656
    monitor-exit p0

    move-object v4, v8

    goto :goto_1

    .line 606
    .end local v4           #is:Ljava/io/InputStream;
    .end local v8           #res:Landroid/content/res/AssetManager$AssetInputStream;
    :cond_5
    const/4 v4, 0x0

    .line 607
    .restart local v4       #is:Ljava/io/InputStream;
    if-eqz p5, :cond_8

    .line 609
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 611
    .local v3, iconText:Ljava/lang/String;
    if-eqz v3, :cond_7

    iget-object v10, p0, Landroid/content/res/AssetManager;->mIconPath:Ljava/util/HashMap;

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 612
    iget-object v10, p0, Landroid/content/res/AssetManager;->mIconPath:Ljava/util/HashMap;

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 617
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

    .line 619
    if-nez v4, :cond_6

    .line 620
    move/from16 v0, p4

    invoke-virtual {p0, v2, p2, v0}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v4

    .line 623
    :cond_6
    if-eqz v4, :cond_4

    .line 624
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-direct {p0, v10}, Landroid/content/res/AssetManager;->incRefsLocked(I)V

    .line 625
    monitor-exit p0

    goto :goto_1

    .line 614
    .end local v5           #pack:Ljava/lang/String;
    :cond_7
    move-object v5, v7

    .restart local v5       #pack:Ljava/lang/String;
    goto :goto_2

    .line 628
    .end local v3           #iconText:Ljava/lang/String;
    .end local v5           #pack:Ljava/lang/String;
    :cond_8
    const-string v10, "com.android.contacts"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 631
    const-string v10, "com.baidu.dialpad"

    const/4 v11, 0x0

    invoke-direct {p0, p1, p2, v10, v11}, Landroid/content/res/AssetManager;->openIconAsset(Landroid/util/TypedValue;Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v4

    .line 633
    if-eqz v4, :cond_9

    .line 634
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-direct {p0, v10}, Landroid/content/res/AssetManager;->incRefsLocked(I)V

    .line 635
    monitor-exit p0

    goto/16 :goto_1

    .line 639
    :cond_9
    const/4 v10, 0x0

    invoke-direct {p0, p1, p2, v7, v10}, Landroid/content/res/AssetManager;->openIconAsset(Landroid/util/TypedValue;Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v4

    .line 641
    if-nez v4, :cond_a

    .line 642
    move/from16 v0, p4

    invoke-virtual {p0, v2, p2, v0}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v4

    .line 645
    :cond_a
    if-eqz v4, :cond_4

    .line 646
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-direct {p0, v10}, Landroid/content/res/AssetManager;->incRefsLocked(I)V

    .line 647
    monitor-exit p0

    goto/16 :goto_1

    .line 658
    :cond_b
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 659
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
    .line 501
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
    .line 515
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
    .line 670
    monitor-enter p0

    .line 671
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v0, :cond_0

    .line 672
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Assetmanager has been closed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 674
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    invoke-direct {p0, p1, p2, v0}, Landroid/content/res/AssetManager;->openNonAssetFdNative(ILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 676
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    .line 677
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

    .line 679
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 680
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
    .line 665
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
    .line 729
    monitor-enter p0

    .line 730
    :try_start_0
    iget-boolean v2, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v2, :cond_0

    .line 731
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Assetmanager has been closed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 739
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 733
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->openXmlAssetNative(ILjava/lang/String;)I

    move-result v1

    .line 734
    .local v1, xmlBlock:I
    if-eqz v1, :cond_1

    .line 735
    new-instance v0, Landroid/content/res/XmlBlock;

    invoke-direct {v0, p0, v1}, Landroid/content/res/XmlBlock;-><init>(Landroid/content/res/AssetManager;I)V

    .line 736
    .local v0, res:Landroid/content/res/XmlBlock;
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/content/res/AssetManager;->incRefsLocked(I)V

    .line 737
    monitor-exit p0

    return-object v0

    .line 739
    .end local v0           #res:Landroid/content/res/XmlBlock;
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 740
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
    .line 716
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
    .line 701
    invoke-virtual {p0, p1, p2}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    .line 702
    .local v0, block:Landroid/content/res/XmlBlock;
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 703
    .local v1, rp:Landroid/content/res/XmlResourceParser;
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->close()V

    .line 704
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
    .line 690
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method final releaseTheme(I)V
    .locals 1
    .parameter "theme"

    .prologue
    .line 761
    monitor-enter p0

    .line 762
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->deleteTheme(I)V

    .line 763
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->decRefsLocked(I)V

    .line 764
    monitor-exit p0

    .line 765
    return-void

    .line 764
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

.method public setContext(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 894
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 898
    :cond_1
    iget-object v0, p0, Landroid/content/res/AssetManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 901
    iput-object p1, p0, Landroid/content/res/AssetManager;->mContext:Landroid/content/Context;

    .line 902
    invoke-direct {p0}, Landroid/content/res/AssetManager;->readChannelPkgsBackgroud()V

    .line 904
    new-instance v0, Landroid/content/res/AssetManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/content/res/AssetManager$1;-><init>(Landroid/content/res/AssetManager;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mObserver:Landroid/database/ContentObserver;

    .line 910
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/AssetManager;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/content/res/AssetManager;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method setDensityDpi(I)V
    .locals 0
    .parameter "dpi"

    .prologue
    .line 1206
    iput p1, p0, Landroid/content/res/AssetManager;->mDpi:I

    .line 1207
    return-void
.end method

.method public final native setLocale(Ljava/lang/String;)V
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "pkg"

    .prologue
    .line 887
    iput-object p1, p0, Landroid/content/res/AssetManager;->mPackageName:Ljava/lang/String;

    .line 888
    return-void
.end method

.method xmlBlockGone(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 744
    monitor-enter p0

    .line 745
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->decRefsLocked(I)V

    .line 746
    monitor-exit p0

    .line 747
    return-void

    .line 746
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
