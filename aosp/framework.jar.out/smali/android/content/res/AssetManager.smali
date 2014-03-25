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

.field static final STYLE_ASSET_COOKIE:I = 0x2

.field static final STYLE_CHANGING_CONFIGURATIONS:I = 0x4

.field static final STYLE_DATA:I = 0x1

.field static final STYLE_DENSITY:I = 0x5

.field static final STYLE_NUM_ENTRIES:I = 0x6

.field static final STYLE_RESOURCE_ID:I = 0x3

.field static final STYLE_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AssetManager"

.field private static final localLOGV:Z

.field private static sDFOResolutionSet:Z

.field private static final sSync:Ljava/lang/Object;

.field static sSystem:Landroid/content/res/AssetManager;


# instance fields
.field private mNObject:I

.field private mNumRefs:I

.field private mObject:I

.field private final mOffsets:[J

.field private mOpen:Z

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
    .locals 1

    .prologue
    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    .line 77
    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Landroid/content/res/AssetManager;->sDFOResolutionSet:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 88
    iput v1, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 89
    iput-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 103
    monitor-enter p0

    .line 108
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->init()V

    .line 110
    invoke-static {}, Landroid/content/res/AssetManager;->ensureSystemAssets()V

    .line 111
    monitor-exit p0

    .line 112
    return-void

    .line 111
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

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 88
    iput v1, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 89
    iput-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 131
    invoke-direct {p0}, Landroid/content/res/AssetManager;->init()V

    .line 133
    return-void
.end method

.method static synthetic access$100(Landroid/content/res/AssetManager;I)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getAssetLength(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Landroid/content/res/AssetManager;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->readAssetChar(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/content/res/AssetManager;I)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getAssetRemainingLength(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Landroid/content/res/AssetManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->destroyAsset(I)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/res/AssetManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->decRefsLocked(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/content/res/AssetManager;IJI)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->seekAsset(IJI)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Landroid/content/res/AssetManager;I[BII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->readAsset(I[BII)I

    move-result v0

    return v0
.end method

.method private final native addAssetPathNative(Ljava/lang/String;)I
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
    .line 845
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 848
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    if-nez v0, :cond_0

    .line 849
    invoke-direct {p0}, Landroid/content/res/AssetManager;->destroy()V

    .line 851
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
    .line 115
    sget-object v2, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 116
    :try_start_0
    sget-object v1, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    if-nez v1, :cond_0

    .line 117
    new-instance v0, Landroid/content/res/AssetManager;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/res/AssetManager;-><init>(Z)V

    .line 118
    .local v0, system:Landroid/content/res/AssetManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->makeStringBlocks(Z)V

    .line 119
    sput-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    .line 121
    :cond_0
    monitor-exit v2

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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

.method public static final native getGlobalAssetCount()I
.end method

.method public static final native getGlobalAssetManagerCount()I
.end method

.method private final native getNativeStringBlock(I)I
.end method

.method private final native getStringBlockCount()I
.end method

.method public static getSystem()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Landroid/content/res/AssetManager;->ensureSystemAssets()V

    .line 142
    sget-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method private final incRefsLocked(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 838
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 839
    return-void
.end method

.method private final native init()V
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

.method private final setMtkBuiltPackageList()Z
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 639
    const-string/jumbo v12, "package"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v7

    .line 640
    .local v7, mPm:Landroid/content/pm/IPackageManager;
    if-nez v7, :cond_1

    .line 679
    :cond_0
    :goto_0
    return v11

    .line 645
    :cond_1
    const/4 v3, 0x0

    .line 646
    .local v3, inStream:Ljava/io/InputStream;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 648
    .local v10, pkgNameArrayList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v12, "/data/system/resmon-uid.txt"

    invoke-direct {v4, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 650
    .end local v3           #inStream:Ljava/io/InputStream;
    .local v4, inStream:Ljava/io/InputStream;
    if-eqz v4, :cond_4

    .line 651
    :try_start_1
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 652
    .local v5, inputReader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 654
    .local v0, buffReader:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 655
    .local v6, line:Ljava/lang/String;
    :goto_1
    if-eqz v6, :cond_3

    .line 656
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v7, v12}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 657
    .local v8, packageNames:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v12, v8

    if-ge v2, v12, :cond_2

    .line 658
    aget-object v12, v8, v2

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 660
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 661
    goto :goto_1

    .line 662
    .end local v2           #i:I
    .end local v8           #packageNames:[Ljava/lang/String;
    :cond_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    new-array v9, v12, [Ljava/lang/String;

    .line 663
    .local v9, pkgNameArray:[Ljava/lang/String;
    invoke-interface {v10, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 664
    invoke-direct {p0, v9}, Landroid/content/res/AssetManager;->setMtkBuiltPkgListNative([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_6

    .line 666
    .end local v0           #buffReader:Ljava/io/BufferedReader;
    .end local v5           #inputReader:Ljava/io/InputStreamReader;
    .end local v6           #line:Ljava/lang/String;
    .end local v9           #pkgNameArray:[Ljava/lang/String;
    :cond_4
    const/4 v11, 0x1

    .line 675
    if-eqz v4, :cond_0

    .line 677
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 678
    :catch_0
    move-exception v12

    goto :goto_0

    .line 668
    .end local v4           #inStream:Ljava/io/InputStream;
    .restart local v3       #inStream:Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 669
    .local v1, e:Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v12, "AssetManager"

    const-string v13, "[DFO] resmon-uid.txt IOException!!"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 675
    if-eqz v3, :cond_0

    .line 677
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 678
    :catch_2
    move-exception v12

    goto :goto_0

    .line 671
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 672
    .local v1, e:Landroid/os/RemoteException;
    :goto_4
    :try_start_5
    const-string v12, "AssetManager"

    const-string v13, "[DFO] getPackagesForUid RemoteException!!"

    invoke-static {v12, v13, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 675
    if-eqz v3, :cond_0

    .line 677
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 678
    :catch_4
    move-exception v12

    goto :goto_0

    .line 675
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v11

    :goto_5
    if-eqz v3, :cond_5

    .line 677
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 679
    :cond_5
    :goto_6
    throw v11

    .line 678
    :catch_5
    move-exception v12

    goto :goto_6

    .line 675
    .end local v3           #inStream:Ljava/io/InputStream;
    .restart local v4       #inStream:Ljava/io/InputStream;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4           #inStream:Ljava/io/InputStream;
    .restart local v3       #inStream:Ljava/io/InputStream;
    goto :goto_5

    .line 671
    .end local v3           #inStream:Ljava/io/InputStream;
    .restart local v4       #inStream:Ljava/io/InputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4           #inStream:Ljava/io/InputStream;
    .restart local v3       #inStream:Ljava/io/InputStream;
    goto :goto_4

    .line 668
    .end local v3           #inStream:Ljava/io/InputStream;
    .restart local v4       #inStream:Ljava/io/InputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4           #inStream:Ljava/io/InputStream;
    .restart local v3       #inStream:Ljava/io/InputStream;
    goto :goto_3
.end method

.method private final native setMtkBuiltPkgListNative([Ljava/lang/String;)V
.end method


# virtual methods
.method public final addAssetPath(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 621
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->addAssetPathNative(Ljava/lang/String;)I

    move-result v0

    .line 631
    .local v0, res:I
    return v0
.end method

.method public final addAssetPaths([Ljava/lang/String;)[I
    .locals 3
    .parameter "paths"

    .prologue
    .line 697
    if-nez p1, :cond_1

    .line 698
    const/4 v0, 0x0

    .line 706
    :cond_0
    return-object v0

    .line 701
    :cond_1
    array-length v2, p1

    new-array v0, v2, [I

    .line 702
    .local v0, cookies:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 703
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 702
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 149
    monitor-enter p0

    .line 152
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/content/res/AssetManager;->decRefsLocked(I)V

    .line 156
    :cond_0
    monitor-exit p0

    .line 157
    return-void

    .line 156
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
    .line 519
    monitor-enter p0

    .line 520
    :try_start_0
    iget-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v1, :cond_0

    .line 521
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Assetmanager has been closed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 526
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 523
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->newTheme()I

    move-result v0

    .line 524
    .local v0, res:I
    invoke-direct {p0, v0}, Landroid/content/res/AssetManager;->incRefsLocked(I)V

    .line 525
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method final ensureStringBlocks()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    if-nez v0, :cond_1

    .line 262
    monitor-enter p0

    .line 263
    :try_start_0
    iget-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    if-nez v0, :cond_0

    .line 264
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->makeStringBlocks(Z)V

    .line 266
    :cond_0
    monitor-exit p0

    .line 268
    :cond_1
    return-void

    .line 266
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
    .line 547
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 551
    return-void

    .line 549
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
    .line 289
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
    .line 182
    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v1, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 184
    .local v1, tmpValue:Landroid/util/TypedValue;
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/content/res/AssetManager;->loadResourceBagValue(IILandroid/util/TypedValue;Z)I

    move-result v0

    .line 185
    .local v0, block:I
    if-ltz v0, :cond_1

    .line 186
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 187
    iget-object v2, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v2, v2, v0

    iget v3, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v3}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit p0

    .line 192
    :goto_0
    return-object v2

    .line 189
    :cond_0
    invoke-virtual {v1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit p0

    goto :goto_0

    .line 191
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

    .line 192
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
    .line 201
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getArrayStringResource(I)[Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, retArray:[Ljava/lang/String;
    return-object v0
.end method

.method final getResourceText(I)Ljava/lang/CharSequence;
    .locals 4
    .parameter "ident"

    .prologue
    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v1, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 166
    .local v1, tmpValue:Landroid/util/TypedValue;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v1, v3}, Landroid/content/res/AssetManager;->loadResourceValue(ISLandroid/util/TypedValue;Z)I

    move-result v0

    .line 167
    .local v0, block:I
    if-ltz v0, :cond_1

    .line 168
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 169
    iget-object v2, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v2, v2, v0

    iget v3, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v3}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit p0

    .line 174
    :goto_0
    return-object v2

    .line 171
    :cond_0
    invoke-virtual {v1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit p0

    goto :goto_0

    .line 173
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

    .line 174
    const/4 v2, 0x0

    goto :goto_0
.end method

.method final getResourceTextArray(I)[Ljava/lang/CharSequence;
    .locals 9
    .parameter "id"

    .prologue
    .line 228
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getArrayStringInfo(I)[I

    move-result-object v5

    .line 229
    .local v5, rawInfoArray:[I
    array-length v6, v5

    .line 230
    .local v6, rawInfoArrayLen:I
    div-int/lit8 v3, v6, 0x2

    .line 233
    .local v3, infoArrayLen:I
    new-array v7, v3, [Ljava/lang/CharSequence;

    .line 234
    .local v7, retArray:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 235
    aget v0, v5, v1

    .line 236
    .local v0, block:I
    add-int/lit8 v8, v1, 0x1

    aget v2, v5, v8

    .line 237
    .local v2, index:I
    if-ltz v2, :cond_0

    iget-object v8, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v8, v8, v0

    invoke-virtual {v8, v2}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v8

    :goto_1
    aput-object v8, v7, v4

    .line 234
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 237
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 239
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

    .line 211
    int-to-short v2, p2

    invoke-direct {p0, p1, v2, p3, p4}, Landroid/content/res/AssetManager;->loadResourceValue(ISLandroid/util/TypedValue;Z)I

    move-result v0

    .line 212
    .local v0, block:I
    if-ltz v0, :cond_1

    .line 213
    iget v2, p3, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 219
    :goto_0
    return v1

    .line 216
    :cond_0
    iget-object v2, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v2, v2, v0

    iget v3, p3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v3}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_0

    .line 219
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

    .line 244
    invoke-static {p1, p2, p3, p4}, Landroid/content/res/AssetManager;->loadThemeAttributeValue(IILandroid/util/TypedValue;Z)I

    move-result v0

    .line 245
    .local v0, block:I
    if-ltz v0, :cond_2

    .line 246
    iget v3, p3, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 257
    :goto_0
    return v2

    .line 249
    :cond_0
    iget-object v1, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 250
    .local v1, blocks:[Landroid/content/res/StringBlock;
    if-nez v1, :cond_1

    .line 251
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->ensureStringBlocks()V

    .line 252
    iget-object v1, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 254
    :cond_1
    aget-object v3, v1, v0

    iget v4, p3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v3, v4}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_0

    .line 257
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
    .line 271
    if-eqz p1, :cond_0

    sget-object v3, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    iget-object v3, v3, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    array-length v2, v3

    .line 272
    .local v2, sysNum:I
    :goto_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->getStringBlockCount()I

    move-result v1

    .line 273
    .local v1, num:I
    new-array v3, v1, [Landroid/content/res/StringBlock;

    iput-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 276
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 277
    if-ge v0, v2, :cond_1

    .line 278
    iget-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    sget-object v4, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    iget-object v4, v4, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v4, v4, v0

    aput-object v4, v3, v0

    .line 276
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 271
    .end local v0           #i:I
    .end local v1           #num:I
    .end local v2           #sysNum:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 280
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

    .line 283
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
    .line 304
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final open(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 5
    .parameter "fileName"
    .parameter "accessMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    monitor-enter p0

    .line 327
    :try_start_0
    iget-boolean v2, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v2, :cond_0

    .line 328
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Assetmanager has been closed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 336
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 330
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->openAsset(Ljava/lang/String;I)I

    move-result v0

    .line 331
    .local v0, asset:I
    if-eqz v0, :cond_1

    .line 332
    new-instance v1, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;ILandroid/content/res/AssetManager$1;)V

    .line 333
    .local v1, res:Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/content/res/AssetManager;->incRefsLocked(I)V

    .line 334
    monitor-exit p0

    return-object v1

    .line 336
    .end local v1           #res:Landroid/content/res/AssetManager$AssetInputStream;
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
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
    .line 342
    monitor-enter p0

    .line 343
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v0, :cond_0

    .line 344
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Assetmanager has been closed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 346
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    invoke-direct {p0, p1, v0}, Landroid/content/res/AssetManager;->openAssetFd(Ljava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 347
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    .line 348
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

    .line 350
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
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
    .line 405
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;
    .locals 5
    .parameter "cookie"
    .parameter "fileName"
    .parameter "accessMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    monitor-enter p0

    .line 419
    :try_start_0
    iget-boolean v2, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v2, :cond_0

    .line 420
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Assetmanager has been closed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 428
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 422
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/AssetManager;->openNonAssetNative(ILjava/lang/String;I)I

    move-result v0

    .line 423
    .local v0, asset:I
    if-eqz v0, :cond_1

    .line 424
    new-instance v1, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;ILandroid/content/res/AssetManager$1;)V

    .line 425
    .local v1, res:Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/content/res/AssetManager;->incRefsLocked(I)V

    .line 426
    monitor-exit p0

    return-object v1

    .line 428
    .end local v1           #res:Landroid/content/res/AssetManager$AssetInputStream;
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset absolute file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
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
    .line 379
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
    .line 393
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
    .line 439
    monitor-enter p0

    .line 440
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v0, :cond_0

    .line 441
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Assetmanager has been closed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 443
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    invoke-direct {p0, p1, p2, v0}, Landroid/content/res/AssetManager;->openNonAssetFdNative(ILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 445
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    .line 446
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

    .line 448
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
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
    .line 434
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
    .line 498
    monitor-enter p0

    .line 499
    :try_start_0
    iget-boolean v2, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v2, :cond_0

    .line 500
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Assetmanager has been closed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 508
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 502
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->openXmlAssetNative(ILjava/lang/String;)I

    move-result v1

    .line 503
    .local v1, xmlBlock:I
    if-eqz v1, :cond_1

    .line 504
    new-instance v0, Landroid/content/res/XmlBlock;

    invoke-direct {v0, p0, v1}, Landroid/content/res/XmlBlock;-><init>(Landroid/content/res/AssetManager;I)V

    .line 505
    .local v0, res:Landroid/content/res/XmlBlock;
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/content/res/AssetManager;->incRefsLocked(I)V

    .line 506
    monitor-exit p0

    return-object v0

    .line 508
    .end local v0           #res:Landroid/content/res/XmlBlock;
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
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
    .line 485
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
    .line 470
    invoke-virtual {p0, p1, p2}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    .line 471
    .local v0, block:Landroid/content/res/XmlBlock;
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 472
    .local v1, rp:Landroid/content/res/XmlResourceParser;
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->close()V

    .line 473
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
    .line 459
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method final releaseTheme(I)V
    .locals 1
    .parameter "theme"

    .prologue
    .line 530
    monitor-enter p0

    .line 531
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->deleteTheme(I)V

    .line 532
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->decRefsLocked(I)V

    .line 533
    monitor-exit p0

    .line 534
    return-void

    .line 533
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

.method public final native setLocale(Ljava/lang/String;)V
.end method

.method xmlBlockGone(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 513
    monitor-enter p0

    .line 514
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->decRefsLocked(I)V

    .line 515
    monitor-exit p0

    .line 516
    return-void

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
