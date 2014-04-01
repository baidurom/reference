.class public Lcom/baidu/security/autolaunch/AutoLaunchAppManager;
.super Ljava/lang/Object;
.source "AutoLaunchAppManager.java"


# static fields
.field private static final SHOW_LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "AutoLaunchAppManager"

.field private static mInstance:Lcom/baidu/security/autolaunch/AutoLaunchAppManager;


# instance fields
.field private mMainConcernActions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMainProtectedSystemActions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/IPackageManager;

.field private mProtectedApps:Ljava/util/HashSet;
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mInstance:Lcom/baidu/security/autolaunch/AutoLaunchAppManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mPm:Landroid/content/pm/IPackageManager;

    .line 469
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mProtectedApps:Ljava/util/HashSet;

    .line 470
    sget-object v5, Lcom/baidu/security/autolaunch/YiSettings;->APP_WHITE_LIST:[Ljava/lang/String;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/baidu/security/autolaunch/YiSettings;->APP_WHITE_LIST:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_0

    .line 471
    sget-object v1, Lcom/baidu/security/autolaunch/YiSettings;->APP_WHITE_LIST:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 472
    .local v4, pkg:Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mProtectedApps:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 471
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 476
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #pkg:Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mMainConcernActions:Ljava/util/HashSet;

    .line 477
    sget-object v5, Lcom/baidu/security/bm/YiProtectedBroadcasts;->MAIN_CONCERN_ACTINS:[Ljava/lang/String;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/baidu/security/bm/YiProtectedBroadcasts;->MAIN_CONCERN_ACTINS:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_1

    .line 479
    sget-object v1, Lcom/baidu/security/bm/YiProtectedBroadcasts;->MAIN_CONCERN_ACTINS:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v3, v1

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 480
    .local v0, action:Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mMainConcernActions:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 479
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 483
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mMainProtectedSystemActions:Ljava/util/HashSet;

    .line 484
    sget-object v5, Lcom/baidu/security/bm/YiProtectedBroadcasts;->MAIN_PROTECTED_SYSTEM_ACTIONS:[Ljava/lang/String;

    if-eqz v5, :cond_2

    sget-object v5, Lcom/baidu/security/bm/YiProtectedBroadcasts;->MAIN_PROTECTED_SYSTEM_ACTIONS:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_2

    .line 486
    sget-object v1, Lcom/baidu/security/bm/YiProtectedBroadcasts;->MAIN_PROTECTED_SYSTEM_ACTIONS:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v3, v1

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 487
    .restart local v0       #action:Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mMainProtectedSystemActions:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 486
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 490
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    return-void
.end method

.method private getComponentEnabledSetting(Landroid/content/ComponentName;)I
    .locals 4
    .parameter "componentName"

    .prologue
    .line 440
    const/4 v1, 0x0

    .line 442
    .local v1, retVal:I
    :try_start_0
    iget-object v2, p0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 447
    return v1

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getInstalledApplications(I)Ljava/util/List;
    .locals 7
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v0, applicationInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v2, 0x0

    .line 428
    .local v2, lastItem:Landroid/content/pm/ApplicationInfo;
    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 429
    .local v3, lastKey:Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, p1, v3}, Landroid/content/pm/IPackageManager;->getInstalledApplications(ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 430
    .local v4, slice:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/ParceledListSlice;->populateList(Ljava/util/List;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2           #lastItem:Landroid/content/pm/ApplicationInfo;
    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 431
    .restart local v2       #lastItem:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->isLastSlice()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 433
    return-object v0

    .line 428
    .end local v3           #lastKey:Ljava/lang/String;
    .end local v4           #slice:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 434
    .end local v0           #applicationInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v2           #lastItem:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 435
    .local v1, e:Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Package manager has died"

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static getInstance()Lcom/baidu/security/autolaunch/AutoLaunchAppManager;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mInstance:Lcom/baidu/security/autolaunch/AutoLaunchAppManager;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;

    invoke-direct {v0}, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;-><init>()V

    sput-object v0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mInstance:Lcom/baidu/security/autolaunch/AutoLaunchAppManager;

    .line 70
    :cond_0
    sget-object v0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mInstance:Lcom/baidu/security/autolaunch/AutoLaunchAppManager;

    return-object v0
.end method

.method private setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    .locals 3
    .parameter "componentName"
    .parameter "newState"
    .parameter "flags"

    .prologue
    .line 452
    :try_start_0
    iget-object v1, p0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    return-void

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public buildAutoLaunchAppInfo(Ljava/lang/String;)Lcom/baidu/security/bm/AutoLaunchAppInfo;
    .locals 25
    .parameter "apkFilePath"

    .prologue
    .line 329
    const/16 v21, 0x0

    .line 334
    .local v21, retVal:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    new-instance v18, Landroid/content/pm/PackageParser;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 335
    .local v18, packageParser:Landroid/content/pm/PackageParser;
    new-instance v17, Landroid/util/DisplayMetrics;

    invoke-direct/range {v17 .. v17}, Landroid/util/DisplayMetrics;-><init>()V

    .line 336
    .local v17, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual/range {v17 .. v17}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 337
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    .local v22, sourceFile:Ljava/io/File;
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v19

    .line 340
    .local v19, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-gtz v23, :cond_1

    .line 341
    :cond_0
    const/16 v23, 0x0

    .line 418
    :goto_0
    return-object v23

    .line 344
    :cond_1
    const/4 v13, 0x0

    .line 345
    .local v13, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 346
    .local v5, action:Ljava/lang/String;
    const/4 v6, 0x0

    .line 347
    .local v6, actionFound:Z
    const/4 v7, 0x0

    .line 348
    .local v7, compName:Landroid/content/ComponentName;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/PackageParser$Activity;

    .line 349
    .local v20, receiver:Landroid/content/pm/PackageParser$Activity;
    const/4 v6, 0x0

    .line 350
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 351
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 352
    .local v12, intentInfo:Landroid/content/pm/PackageParser$IntentInfo;
    invoke-virtual {v12}, Landroid/content/pm/PackageParser$IntentInfo;->actionsIterator()Ljava/util/Iterator;

    move-result-object v13

    .line 353
    :cond_4
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 354
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #action:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 355
    .restart local v5       #action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mMainConcernActions:Ljava/util/HashSet;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mMainProtectedSystemActions:Ljava/util/HashSet;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 356
    :cond_5
    const/4 v6, 0x1

    .line 357
    if-nez v21, :cond_6

    .line 358
    new-instance v21, Lcom/baidu/security/bm/AutoLaunchAppInfo;

    .end local v21           #retVal:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    invoke-direct/range {v21 .. v21}, Lcom/baidu/security/bm/AutoLaunchAppInfo;-><init>()V

    .line 359
    .restart local v21       #retVal:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    .line 360
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->packageName:Ljava/lang/String;

    .line 362
    :cond_6
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    .line 363
    const/4 v9, 0x0

    .line 364
    .local v9, foundActions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .line 365
    .local v15, launcherInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    move-object/from16 v23, v0

    if-nez v23, :cond_a

    .line 366
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    .line 371
    :goto_2
    if-nez v15, :cond_8

    .line 372
    new-instance v15, Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;

    .end local v15           #launcherInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;
    invoke-direct {v15}, Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;-><init>()V

    .line 373
    .restart local v15       #launcherInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;
    iput-object v7, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;->mComponentName:Landroid/content/ComponentName;

    .line 374
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v8

    .line 379
    .local v8, enableSetting:I
    const/16 v23, 0x2

    move/from16 v0, v23

    if-eq v8, v0, :cond_7

    .line 380
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;->mEnabled:Z

    .line 382
    :cond_7
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .end local v8           #enableSetting:I
    :cond_8
    sget-object v23, Lcom/baidu/security/bm/YiProtectedBroadcasts;->MAIN_CONCERN_ACTINS:[Ljava/lang/String;

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 385
    iget v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;->mLaunchFlags:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    iput v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;->mLaunchFlags:I

    .line 390
    :goto_3
    iget-object v9, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;->mActions:Ljava/util/LinkedList;

    .line 391
    if-nez v9, :cond_9

    .line 392
    new-instance v23, Ljava/util/LinkedList;

    invoke-direct/range {v23 .. v23}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v23

    iput-object v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;->mActions:Ljava/util/LinkedList;

    .line 393
    iget-object v9, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;->mActions:Ljava/util/LinkedList;

    .line 395
    :cond_9
    invoke-virtual {v9, v5}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 396
    invoke-virtual {v9, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 369
    :cond_a
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #launcherInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;
    check-cast v15, Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;

    .restart local v15       #launcherInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;
    goto :goto_2

    .line 388
    :cond_b
    iget v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;->mLaunchFlags:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    iput v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;->mLaunchFlags:I

    goto :goto_3

    .line 405
    .end local v9           #foundActions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v12           #intentInfo:Landroid/content/pm/PackageParser$IntentInfo;
    .end local v15           #launcherInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;
    :cond_c
    if-eqz v6, :cond_2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I

    move-result v23

    if-lez v23, :cond_2

    .line 406
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    .line 407
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v16

    .line 409
    .local v16, launchers:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;

    .line 410
    .local v14, launcher:Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    move/from16 v23, v0

    iget v0, v14, Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;->mLaunchFlags:I

    move/from16 v24, v0

    or-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    .line 411
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    move/from16 v23, v0

    iget-boolean v0, v14, Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;->mEnabled:Z

    move/from16 v24, v0

    and-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    goto :goto_4

    .end local v11           #i$:Ljava/util/Iterator;
    .end local v14           #launcher:Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;
    .end local v16           #launchers:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;>;"
    .end local v20           #receiver:Landroid/content/pm/PackageParser$Activity;
    :cond_d
    move-object/from16 v23, v21

    .line 418
    goto/16 :goto_0
.end method

.method public checkAutoLaunchAppInfo(Lcom/baidu/security/bm/AutoLaunchAppInfo;Ljava/lang/String;)Lcom/baidu/security/bm/AutoLaunchAppInfo;
    .locals 10
    .parameter "detectedApp"
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 204
    if-nez p2, :cond_1

    move-object p1, v3

    .line 278
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 207
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    .line 209
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, p2, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 212
    :goto_1
    if-nez v0, :cond_2

    move-object p1, v3

    .line 213
    goto :goto_0

    .line 216
    :cond_2
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->buildAutoLaunchAppInfo(Ljava/lang/String;)Lcom/baidu/security/bm/AutoLaunchAppInfo;

    move-result-object v3

    .line 217
    .local v3, manifestResult:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    if-eqz v3, :cond_0

    .line 221
    invoke-static {}, Lcom/baidu/security/bm/BroadcastManager;->getInstance()Lcom/baidu/security/bm/BroadcastManager;

    move-result-object v2

    .line 222
    .local v2, bm:Lcom/baidu/security/bm/BroadcastManager;
    if-nez v2, :cond_3

    move-object p1, v3

    .line 223
    goto :goto_0

    .line 226
    :cond_3
    const/4 v4, 0x0

    .line 227
    .local v4, retVal:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    if-nez p1, :cond_7

    .line 231
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/baidu/security/bm/BroadcastManager;->isPackageStopped(Ljava/lang/String;)Z

    move-result v1

    .line 232
    .local v1, appStopped:Z
    if-eqz v1, :cond_4

    .line 233
    iput-boolean v8, v3, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    .line 235
    :cond_4
    iget-boolean v6, v3, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    if-nez v6, :cond_6

    .line 239
    iget-object v6, v3, Lcom/baidu/security/bm/AutoLaunchAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/baidu/security/bm/BroadcastManager;->autolaunchSettingEnabled(Ljava/lang/String;)Z

    move-result v5

    .line 240
    .local v5, settingEnabled:Z
    if-eqz v5, :cond_5

    .line 241
    iput v9, v3, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    .line 242
    invoke-virtual {v2, v3}, Lcom/baidu/security/bm/BroadcastManager;->updateAutoLaunchAppInfo(Lcom/baidu/security/bm/AutoLaunchAppInfo;)V

    .line 248
    :cond_5
    move-object v4, v3

    .end local v1           #appStopped:Z
    .end local v5           #settingEnabled:Z
    :cond_6
    :goto_2
    move-object p1, v4

    .line 278
    goto :goto_0

    .line 258
    :cond_7
    iget-object v6, v3, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    iput-object v6, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    .line 259
    iget v6, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    iget v7, v3, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    or-int/2addr v6, v7

    iput v6, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    .line 260
    iget-boolean v6, v3, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    iget-boolean v7, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    if-eq v6, v7, :cond_8

    .line 261
    iget-boolean v6, v3, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    if-eqz v6, :cond_9

    .line 262
    iget v6, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    if-ne v6, v9, :cond_8

    .line 263
    iput-boolean v9, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    .line 264
    iput v8, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    .line 265
    invoke-virtual {v2, p1}, Lcom/baidu/security/bm/BroadcastManager;->updateAutoLaunchAppInfo(Lcom/baidu/security/bm/AutoLaunchAppInfo;)V

    .line 275
    :cond_8
    :goto_3
    move-object v4, p1

    goto :goto_2

    .line 269
    :cond_9
    iput-boolean v8, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    .line 270
    iput v9, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    .line 271
    invoke-static {}, Lcom/baidu/security/bm/BroadcastManager;->getInstance()Lcom/baidu/security/bm/BroadcastManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/baidu/security/bm/BroadcastManager;->updateAutoLaunchAppInfo(Lcom/baidu/security/bm/AutoLaunchAppInfo;)V

    goto :goto_3

    .line 210
    .end local v2           #bm:Lcom/baidu/security/bm/BroadcastManager;
    .end local v3           #manifestResult:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    .end local v4           #retVal:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public getAutoLaunchApps([Lcom/baidu/security/bm/AutoLaunchAppInfo;)[Lcom/baidu/security/bm/AutoLaunchAppInfo;
    .locals 27
    .parameter "thirdpartyEnabled"

    .prologue
    .line 77
    const/16 v22, 0x0

    .line 78
    .local v22, retVal:[Lcom/baidu/security/bm/AutoLaunchAppInfo;
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 79
    .local v11, autoLaunchAppList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/baidu/security/bm/AutoLaunchAppInfo;>;"
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 80
    .local v3, allApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 82
    .local v5, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v0, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x8

    if-nez v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mProtectedApps:Ljava/util/HashSet;

    move-object/from16 v25, v0

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 84
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->buildAutoLaunchAppInfo(Ljava/lang/String;)Lcom/baidu/security/bm/AutoLaunchAppInfo;

    move-result-object v10

    .line 89
    .local v10, autoLaunchApp:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    if-eqz v10, :cond_0

    iget v0, v10, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 90
    invoke-virtual {v11, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    .end local v5           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v10           #autoLaunchApp:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :cond_1
    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v25

    if-gtz v25, :cond_2

    .line 197
    .end local v17           #i$:Ljava/util/Iterator;
    .end local p1
    :goto_1
    return-object p1

    .line 99
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local p1
    :cond_2
    const/4 v4, 0x0

    .line 100
    .local v4, allAutoLaunchApp:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/baidu/security/bm/AutoLaunchAppInfo;>;"
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    if-gtz v25, :cond_5

    .line 101
    :cond_3
    move-object v4, v11

    .line 181
    .end local v17           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v24

    .line 182
    .local v24, totalAppNum:I
    if-lez v24, :cond_d

    .line 183
    move/from16 v0, v24

    new-array v0, v0, [Lcom/baidu/security/bm/AutoLaunchAppInfo;

    move-object/from16 v22, v0

    .line 184
    const/16 v19, 0x0

    .line 185
    .local v19, index:I
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 186
    .local v20, it:Ljava/util/Iterator;
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_d

    .line 187
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_d

    .line 188
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/security/bm/AutoLaunchAppInfo;

    .line 189
    .local v2, alAppInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    aput-object v2, v22, v16

    .line 186
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 104
    .end local v2           #alAppInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    .end local v16           #i:I
    .end local v19           #index:I
    .end local v20           #it:Ljava/util/Iterator;
    .end local v24           #totalAppNum:I
    .restart local v17       #i$:Ljava/util/Iterator;
    :cond_5
    new-instance v4, Ljava/util/LinkedList;

    .end local v4           #allAutoLaunchApp:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/baidu/security/bm/AutoLaunchAppInfo;>;"
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 105
    .restart local v4       #allAutoLaunchApp:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/baidu/security/bm/AutoLaunchAppInfo;>;"
    move-object/from16 v9, p1

    .local v9, arr$:[Lcom/baidu/security/bm/AutoLaunchAppInfo;
    array-length v0, v9

    move/from16 v21, v0

    .local v21, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    aget-object v5, v9, v17

    .line 106
    .local v5, appInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 108
    .end local v5           #appInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :cond_6
    invoke-static {}, Lcom/baidu/security/bm/BroadcastManager;->getInstance()Lcom/baidu/security/bm/BroadcastManager;

    move-result-object v12

    .line 109
    .local v12, bm:Lcom/baidu/security/bm/BroadcastManager;
    const/4 v13, 0x0

    .line 110
    .local v13, found:Z
    const/4 v15, 0x0

    .line 111
    .local v15, foundInManifest:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    const/4 v14, 0x0

    .line 112
    .local v14, foundByIntentFilter:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    const/4 v8, 0x0

    .line 113
    .local v8, appStopped:Z
    invoke-virtual {v11}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .end local v17           #i$:I
    :cond_7
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/security/bm/AutoLaunchAppInfo;

    .line 114
    .local v6, appInfo1:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    const/4 v13, 0x0

    .line 115
    move-object v15, v6

    .line 116
    move-object/from16 v9, p1

    array-length v0, v9

    move/from16 v21, v0

    const/16 v18, 0x0

    .local v18, i$:I
    :goto_5
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    aget-object v7, v9, v18

    .line 117
    .local v7, appInfo2:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    move-object v14, v7

    .line 118
    iget-object v0, v6, Lcom/baidu/security/bm/AutoLaunchAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    iget-object v0, v7, Lcom/baidu/security/bm/AutoLaunchAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 119
    const/4 v13, 0x1

    .line 123
    .end local v7           #appInfo2:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :cond_8
    iget-object v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Lcom/baidu/security/bm/BroadcastManager;->isPackageStopped(Ljava/lang/String;)Z

    move-result v8

    .line 133
    if-eqz v13, :cond_b

    .line 134
    iget-object v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iput-object v0, v14, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    .line 135
    iget v0, v14, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    move/from16 v25, v0

    iget v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    move/from16 v26, v0

    or-int v25, v25, v26

    move/from16 v0, v25

    iput v0, v14, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    .line 136
    iget-boolean v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    move/from16 v25, v0

    iget-boolean v0, v14, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_7

    .line 137
    iget-boolean v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_a

    .line 138
    iget v0, v14, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 139
    const/16 v25, 0x1

    move/from16 v0, v25

    iput-boolean v0, v14, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    .line 140
    const/16 v25, 0x0

    move/from16 v0, v25

    iput v0, v14, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    .line 141
    invoke-virtual {v12, v14}, Lcom/baidu/security/bm/BroadcastManager;->updateAutoLaunchAppInfo(Lcom/baidu/security/bm/AutoLaunchAppInfo;)V

    goto :goto_4

    .line 116
    .restart local v7       #appInfo2:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :cond_9
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 145
    .end local v7           #appInfo2:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :cond_a
    const/16 v25, 0x0

    move/from16 v0, v25

    iput-boolean v0, v14, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    .line 146
    const/16 v25, 0x1

    move/from16 v0, v25

    iput v0, v14, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    .line 147
    invoke-static {}, Lcom/baidu/security/bm/BroadcastManager;->getInstance()Lcom/baidu/security/bm/BroadcastManager;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Lcom/baidu/security/bm/BroadcastManager;->updateAutoLaunchAppInfo(Lcom/baidu/security/bm/AutoLaunchAppInfo;)V

    goto/16 :goto_4

    .line 159
    :cond_b
    iget-object v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Lcom/baidu/security/bm/BroadcastManager;->autolaunchSettingEnabled(Ljava/lang/String;)Z

    move-result v23

    .line 160
    .local v23, settingEnabled:Z
    if-eqz v8, :cond_c

    .line 161
    const/16 v25, 0x0

    move/from16 v0, v25

    iput-boolean v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    .line 163
    :cond_c
    iget-boolean v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    move/from16 v25, v0

    if-nez v25, :cond_7

    .line 167
    invoke-virtual {v4, v15}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 168
    if-eqz v23, :cond_7

    .line 169
    const/16 v25, 0x1

    move/from16 v0, v25

    iput v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    .line 170
    invoke-virtual {v12, v15}, Lcom/baidu/security/bm/BroadcastManager;->updateAutoLaunchAppInfo(Lcom/baidu/security/bm/AutoLaunchAppInfo;)V

    goto/16 :goto_4

    .end local v6           #appInfo1:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    .end local v8           #appStopped:Z
    .end local v9           #arr$:[Lcom/baidu/security/bm/AutoLaunchAppInfo;
    .end local v12           #bm:Lcom/baidu/security/bm/BroadcastManager;
    .end local v13           #found:Z
    .end local v14           #foundByIntentFilter:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    .end local v15           #foundInManifest:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    .end local v18           #i$:I
    .end local v21           #len$:I
    .end local v23           #settingEnabled:Z
    .restart local v24       #totalAppNum:I
    :cond_d
    move-object/from16 p1, v22

    .line 197
    goto/16 :goto_1
.end method

.method public setAutoLaunchEnableSetting(Lcom/baidu/security/bm/AutoLaunchAppInfo;Z)V
    .locals 7
    .parameter "appInfo"
    .parameter "enable"

    .prologue
    const/4 v6, 0x1

    .line 285
    iget-object v5, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v5, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 293
    .local v1, components:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    const/4 v2, 0x0

    .line 294
    .local v2, enableSetting:I
    const/4 v3, -0x1

    .line 295
    .local v3, enableVal:I
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 296
    .local v0, comp:Landroid/content/ComponentName;
    const/4 v3, -0x1

    .line 297
    invoke-direct {p0, v0}, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    .line 301
    if-eqz v2, :cond_4

    .line 302
    if-eqz p2, :cond_3

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    .line 303
    const/4 v3, 0x1

    .line 305
    :cond_3
    if-nez p2, :cond_4

    if-ne v2, v6, :cond_4

    .line 306
    const/4 v3, 0x2

    .line 309
    :cond_4
    if-ltz v3, :cond_2

    .line 310
    invoke-direct {p0, v0, v3, v6}, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_1

    .line 316
    .end local v0           #comp:Landroid/content/ComponentName;
    :cond_5
    if-eqz p2, :cond_0

    iget v5, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    if-ne v5, v6, :cond_0

    .line 317
    iget-object v5, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->setPackageStoppedState(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setPackageStoppedState(Ljava/lang/String;Z)V
    .locals 3
    .parameter "packageName"
    .parameter "stopped"

    .prologue
    .line 460
    :try_start_0
    iget-object v1, p0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    return-void

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
