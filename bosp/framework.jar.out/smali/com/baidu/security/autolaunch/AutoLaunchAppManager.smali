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
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mInstance:Lcom/baidu/security/autolaunch/AutoLaunchAppManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mPm:Landroid/content/pm/IPackageManager;

    .line 468
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mProtectedApps:Ljava/util/HashSet;

    .line 469
    sget-object v5, Lcom/baidu/security/autolaunch/YiSettings;->APP_WHITE_LIST:[Ljava/lang/String;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/baidu/security/autolaunch/YiSettings;->APP_WHITE_LIST:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_0

    .line 470
    sget-object v1, Lcom/baidu/security/autolaunch/YiSettings;->APP_WHITE_LIST:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 471
    .local v4, pkg:Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mProtectedApps:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 470
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 475
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #pkg:Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mMainConcernActions:Ljava/util/HashSet;

    .line 476
    sget-object v5, Lcom/baidu/security/bm/YiProtectedBroadcasts;->MAIN_CONCERN_ACTINS:[Ljava/lang/String;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/baidu/security/bm/YiProtectedBroadcasts;->MAIN_CONCERN_ACTINS:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_1

    .line 478
    sget-object v1, Lcom/baidu/security/bm/YiProtectedBroadcasts;->MAIN_CONCERN_ACTINS:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v3, v1

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 479
    .local v0, action:Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mMainConcernActions:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 478
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 482
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mMainProtectedSystemActions:Ljava/util/HashSet;

    .line 483
    sget-object v5, Lcom/baidu/security/bm/YiProtectedBroadcasts;->MAIN_PROTECTED_SYSTEM_ACTIONS:[Ljava/lang/String;

    if-eqz v5, :cond_2

    sget-object v5, Lcom/baidu/security/bm/YiProtectedBroadcasts;->MAIN_PROTECTED_SYSTEM_ACTIONS:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_2

    .line 485
    sget-object v1, Lcom/baidu/security/bm/YiProtectedBroadcasts;->MAIN_PROTECTED_SYSTEM_ACTIONS:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v3, v1

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 486
    .restart local v0       #action:Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mMainProtectedSystemActions:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 485
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 489
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    return-void
.end method

.method private buildAutoLaunchAppInfo(Ljava/lang/String;)Lcom/baidu/security/bm/AutoLaunchAppInfo;
    .locals 25
    .parameter "apkFilePath"

    .prologue
    .line 327
    const/16 v21, 0x0

    .line 332
    .local v21, retVal:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    new-instance v18, Landroid/content/pm/PackageParser;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 333
    .local v18, packageParser:Landroid/content/pm/PackageParser;
    new-instance v17, Landroid/util/DisplayMetrics;

    invoke-direct/range {v17 .. v17}, Landroid/util/DisplayMetrics;-><init>()V

    .line 334
    .local v17, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual/range {v17 .. v17}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 335
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    .local v22, sourceFile:Ljava/io/File;
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v19

    .line 338
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

    .line 339
    :cond_0
    const/16 v23, 0x0

    .line 416
    :goto_0
    return-object v23

    .line 342
    :cond_1
    const/4 v13, 0x0

    .line 343
    .local v13, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 344
    .local v5, action:Ljava/lang/String;
    const/4 v6, 0x0

    .line 345
    .local v6, actionFound:Z
    const/4 v7, 0x0

    .line 346
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

    .line 347
    .local v20, receiver:Landroid/content/pm/PackageParser$Activity;
    const/4 v6, 0x0

    .line 348
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 349
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

    .line 350
    .local v12, intentInfo:Landroid/content/pm/PackageParser$IntentInfo;
    invoke-virtual {v12}, Landroid/content/pm/PackageParser$IntentInfo;->actionsIterator()Ljava/util/Iterator;

    move-result-object v13

    .line 351
    :cond_4
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 352
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #action:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 353
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

    .line 354
    :cond_5
    const/4 v6, 0x1

    .line 355
    if-nez v21, :cond_6

    .line 356
    new-instance v21, Lcom/baidu/security/bm/AutoLaunchAppInfo;

    .end local v21           #retVal:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    invoke-direct/range {v21 .. v21}, Lcom/baidu/security/bm/AutoLaunchAppInfo;-><init>()V

    .line 357
    .restart local v21       #retVal:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    .line 358
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->packageName:Ljava/lang/String;

    .line 360
    :cond_6
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    .line 361
    const/4 v9, 0x0

    .line 362
    .local v9, foundActions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .line 363
    .local v15, launcherInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    move-object/from16 v23, v0

    if-nez v23, :cond_a

    .line 364
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    .line 369
    :goto_2
    if-nez v15, :cond_8

    .line 370
    new-instance v15, Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;

    .end local v15           #launcherInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;
    invoke-direct {v15}, Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;-><init>()V

    .line 371
    .restart local v15       #launcherInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;
    iput-object v7, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;->mComponentName:Landroid/content/ComponentName;

    .line 372
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v8

    .line 377
    .local v8, enableSetting:I
    const/16 v23, 0x2

    move/from16 v0, v23

    if-eq v8, v0, :cond_7

    .line 378
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;->mEnabled:Z

    .line 380
    :cond_7
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .end local v8           #enableSetting:I
    :cond_8
    sget-object v23, Lcom/baidu/security/bm/YiProtectedBroadcasts;->MAIN_CONCERN_ACTINS:[Ljava/lang/String;

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 383
    iget v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;->mLaunchFlags:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    iput v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;->mLaunchFlags:I

    .line 388
    :goto_3
    iget-object v9, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;->mActions:Ljava/util/LinkedList;

    .line 389
    if-nez v9, :cond_9

    .line 390
    new-instance v23, Ljava/util/LinkedList;

    invoke-direct/range {v23 .. v23}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v23

    iput-object v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;->mActions:Ljava/util/LinkedList;

    .line 391
    iget-object v9, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;->mActions:Ljava/util/LinkedList;

    .line 393
    :cond_9
    invoke-virtual {v9, v5}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 394
    invoke-virtual {v9, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 367
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

    .line 386
    :cond_b
    iget v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;->mLaunchFlags:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    iput v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;->mLaunchFlags:I

    goto :goto_3

    .line 403
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

    .line 404
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    .line 405
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v16

    .line 407
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

    .line 408
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

    .line 409
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

    .line 416
    goto/16 :goto_0
.end method

.method private getComponentEnabledSetting(Landroid/content/ComponentName;)I
    .locals 4
    .parameter "componentName"

    .prologue
    .line 439
    const/4 v1, 0x0

    .line 441
    .local v1, retVal:I
    :try_start_0
    iget-object v2, p0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mPm:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-interface {v2, p1, v3}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 446
    return v1

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getInstalledApplications(I)Ljava/util/List;
    .locals 8
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
    .line 420
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 422
    .local v5, userId:I
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .local v0, applicationInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v2, 0x0

    .line 427
    .local v2, lastItem:Landroid/content/pm/ApplicationInfo;
    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 428
    .local v3, lastKey:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, p1, v3, v5}, Landroid/content/pm/IPackageManager;->getInstalledApplications(ILjava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 429
    .local v4, slice:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v0, v6}, Landroid/content/pm/ParceledListSlice;->populateList(Ljava/util/List;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2           #lastItem:Landroid/content/pm/ApplicationInfo;
    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 430
    .restart local v2       #lastItem:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->isLastSlice()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 432
    return-object v0

    .line 427
    .end local v3           #lastKey:Ljava/lang/String;
    .end local v4           #slice:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 433
    .end local v0           #applicationInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v2           #lastItem:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 434
    .local v1, e:Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Package manager has died"

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static getInstance()Lcom/baidu/security/autolaunch/AutoLaunchAppManager;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mInstance:Lcom/baidu/security/autolaunch/AutoLaunchAppManager;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;

    invoke-direct {v0}, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;-><init>()V

    sput-object v0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mInstance:Lcom/baidu/security/autolaunch/AutoLaunchAppManager;

    .line 71
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
    .line 451
    :try_start_0
    iget-object v1, p0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mPm:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    return-void

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public checkAutoLaunchAppInfo(Lcom/baidu/security/bm/AutoLaunchAppInfo;Ljava/lang/String;)Lcom/baidu/security/bm/AutoLaunchAppInfo;
    .locals 11
    .parameter "detectedApp"
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 205
    if-nez p2, :cond_1

    move-object p1, v3

    .line 279
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 208
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    .line 210
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-interface {v6, p2, v7, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 213
    :goto_1
    if-nez v0, :cond_2

    move-object p1, v3

    .line 214
    goto :goto_0

    .line 217
    :cond_2
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->buildAutoLaunchAppInfo(Ljava/lang/String;)Lcom/baidu/security/bm/AutoLaunchAppInfo;

    move-result-object v3

    .line 218
    .local v3, manifestResult:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    if-eqz v3, :cond_0

    .line 222
    invoke-static {}, Lcom/baidu/security/bm/BroadcastManager;->getInstance()Lcom/baidu/security/bm/BroadcastManager;

    move-result-object v2

    .line 223
    .local v2, bm:Lcom/baidu/security/bm/BroadcastManager;
    if-nez v2, :cond_3

    move-object p1, v3

    .line 224
    goto :goto_0

    .line 227
    :cond_3
    const/4 v4, 0x0

    .line 228
    .local v4, retVal:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    if-nez p1, :cond_7

    .line 232
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/baidu/security/bm/BroadcastManager;->isPackageStopped(Ljava/lang/String;)Z

    move-result v1

    .line 233
    .local v1, appStopped:Z
    if-eqz v1, :cond_4

    .line 234
    iput-boolean v9, v3, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    .line 236
    :cond_4
    iget-boolean v6, v3, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    if-nez v6, :cond_6

    .line 240
    iget-object v6, v3, Lcom/baidu/security/bm/AutoLaunchAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/baidu/security/bm/BroadcastManager;->autolaunchSettingEnabled(Ljava/lang/String;)Z

    move-result v5

    .line 241
    .local v5, settingEnabled:Z
    if-eqz v5, :cond_5

    .line 242
    iput v10, v3, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    .line 243
    invoke-virtual {v2, v3}, Lcom/baidu/security/bm/BroadcastManager;->updateAutoLaunchAppInfo(Lcom/baidu/security/bm/AutoLaunchAppInfo;)V

    .line 249
    :cond_5
    move-object v4, v3

    .end local v1           #appStopped:Z
    .end local v5           #settingEnabled:Z
    :cond_6
    :goto_2
    move-object p1, v4

    .line 279
    goto :goto_0

    .line 259
    :cond_7
    iget-object v6, v3, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    iput-object v6, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    .line 260
    iget v6, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    iget v7, v3, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    or-int/2addr v6, v7

    iput v6, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    .line 261
    iget-boolean v6, v3, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    iget-boolean v7, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    if-eq v6, v7, :cond_8

    .line 262
    iget-boolean v6, v3, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    if-eqz v6, :cond_9

    .line 263
    iget v6, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    if-ne v6, v10, :cond_8

    .line 264
    iput-boolean v10, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    .line 265
    iput v9, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    .line 266
    invoke-virtual {v2, p1}, Lcom/baidu/security/bm/BroadcastManager;->updateAutoLaunchAppInfo(Lcom/baidu/security/bm/AutoLaunchAppInfo;)V

    .line 276
    :cond_8
    :goto_3
    move-object v4, p1

    goto :goto_2

    .line 270
    :cond_9
    iput-boolean v9, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    .line 271
    iput v10, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    .line 272
    invoke-static {}, Lcom/baidu/security/bm/BroadcastManager;->getInstance()Lcom/baidu/security/bm/BroadcastManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/baidu/security/bm/BroadcastManager;->updateAutoLaunchAppInfo(Lcom/baidu/security/bm/AutoLaunchAppInfo;)V

    goto :goto_3

    .line 211
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
    .line 78
    const/16 v22, 0x0

    .line 79
    .local v22, retVal:[Lcom/baidu/security/bm/AutoLaunchAppInfo;
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 80
    .local v11, autoLaunchAppList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/baidu/security/bm/AutoLaunchAppInfo;>;"
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 81
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

    .line 83
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

    .line 85
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->buildAutoLaunchAppInfo(Ljava/lang/String;)Lcom/baidu/security/bm/AutoLaunchAppInfo;

    move-result-object v10

    .line 90
    .local v10, autoLaunchApp:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    if-eqz v10, :cond_0

    iget v0, v10, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 91
    invoke-virtual {v11, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    .end local v5           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v10           #autoLaunchApp:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :cond_1
    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v25

    if-gtz v25, :cond_2

    .line 198
    .end local v17           #i$:Ljava/util/Iterator;
    .end local p1
    :goto_1
    return-object p1

    .line 100
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local p1
    :cond_2
    const/4 v4, 0x0

    .line 101
    .local v4, allAutoLaunchApp:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/baidu/security/bm/AutoLaunchAppInfo;>;"
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    if-gtz v25, :cond_5

    .line 102
    :cond_3
    move-object v4, v11

    .line 182
    .end local v17           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v24

    .line 183
    .local v24, totalAppNum:I
    if-lez v24, :cond_d

    .line 184
    move/from16 v0, v24

    new-array v0, v0, [Lcom/baidu/security/bm/AutoLaunchAppInfo;

    move-object/from16 v22, v0

    .line 185
    const/16 v19, 0x0

    .line 186
    .local v19, index:I
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 187
    .local v20, it:Ljava/util/Iterator;
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_d

    .line 188
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_d

    .line 189
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/security/bm/AutoLaunchAppInfo;

    .line 190
    .local v2, alAppInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    aput-object v2, v22, v16

    .line 187
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 105
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

    .line 106
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

    .line 107
    .local v5, appInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 109
    .end local v5           #appInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :cond_6
    invoke-static {}, Lcom/baidu/security/bm/BroadcastManager;->getInstance()Lcom/baidu/security/bm/BroadcastManager;

    move-result-object v12

    .line 110
    .local v12, bm:Lcom/baidu/security/bm/BroadcastManager;
    const/4 v13, 0x0

    .line 111
    .local v13, found:Z
    const/4 v15, 0x0

    .line 112
    .local v15, foundInManifest:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    const/4 v14, 0x0

    .line 113
    .local v14, foundByIntentFilter:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    const/4 v8, 0x0

    .line 114
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

    .line 115
    .local v6, appInfo1:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    const/4 v13, 0x0

    .line 116
    move-object v15, v6

    .line 117
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

    .line 118
    .local v7, appInfo2:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    move-object v14, v7

    .line 119
    iget-object v0, v6, Lcom/baidu/security/bm/AutoLaunchAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    iget-object v0, v7, Lcom/baidu/security/bm/AutoLaunchAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 120
    const/4 v13, 0x1

    .line 124
    .end local v7           #appInfo2:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :cond_8
    iget-object v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Lcom/baidu/security/bm/BroadcastManager;->isPackageStopped(Ljava/lang/String;)Z

    move-result v8

    .line 134
    if-eqz v13, :cond_b

    .line 135
    iget-object v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iput-object v0, v14, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    .line 136
    iget v0, v14, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    move/from16 v25, v0

    iget v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    move/from16 v26, v0

    or-int v25, v25, v26

    move/from16 v0, v25

    iput v0, v14, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    .line 137
    iget-boolean v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    move/from16 v25, v0

    iget-boolean v0, v14, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_7

    .line 138
    iget-boolean v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_a

    .line 139
    iget v0, v14, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 140
    const/16 v25, 0x1

    move/from16 v0, v25

    iput-boolean v0, v14, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    .line 141
    const/16 v25, 0x0

    move/from16 v0, v25

    iput v0, v14, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    .line 142
    invoke-virtual {v12, v14}, Lcom/baidu/security/bm/BroadcastManager;->updateAutoLaunchAppInfo(Lcom/baidu/security/bm/AutoLaunchAppInfo;)V

    goto :goto_4

    .line 117
    .restart local v7       #appInfo2:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :cond_9
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 146
    .end local v7           #appInfo2:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :cond_a
    const/16 v25, 0x0

    move/from16 v0, v25

    iput-boolean v0, v14, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    .line 147
    const/16 v25, 0x1

    move/from16 v0, v25

    iput v0, v14, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    .line 148
    invoke-static {}, Lcom/baidu/security/bm/BroadcastManager;->getInstance()Lcom/baidu/security/bm/BroadcastManager;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Lcom/baidu/security/bm/BroadcastManager;->updateAutoLaunchAppInfo(Lcom/baidu/security/bm/AutoLaunchAppInfo;)V

    goto/16 :goto_4

    .line 160
    :cond_b
    iget-object v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Lcom/baidu/security/bm/BroadcastManager;->autolaunchSettingEnabled(Ljava/lang/String;)Z

    move-result v23

    .line 161
    .local v23, settingEnabled:Z
    if-eqz v8, :cond_c

    .line 162
    const/16 v25, 0x0

    move/from16 v0, v25

    iput-boolean v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    .line 164
    :cond_c
    iget-boolean v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    move/from16 v25, v0

    if-nez v25, :cond_7

    .line 168
    invoke-virtual {v4, v15}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 169
    if-eqz v23, :cond_7

    .line 170
    const/16 v25, 0x1

    move/from16 v0, v25

    iput v0, v15, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    .line 171
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

    .line 198
    goto/16 :goto_1
.end method

.method public setAutoLaunchEnableSetting(Lcom/baidu/security/bm/AutoLaunchAppInfo;Z)V
    .locals 7
    .parameter "appInfo"
    .parameter "enable"

    .prologue
    const/4 v6, 0x1

    .line 286
    iget-object v5, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v5, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 294
    .local v1, components:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    const/4 v2, 0x0

    .line 295
    .local v2, enableSetting:I
    const/4 v3, -0x1

    .line 296
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

    .line 297
    .local v0, comp:Landroid/content/ComponentName;
    const/4 v3, -0x1

    .line 298
    invoke-direct {p0, v0}, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    .line 302
    if-eqz v2, :cond_4

    .line 303
    if-eqz p2, :cond_3

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    .line 304
    const/4 v3, 0x1

    .line 306
    :cond_3
    if-nez p2, :cond_4

    if-ne v2, v6, :cond_4

    .line 307
    const/4 v3, 0x2

    .line 310
    :cond_4
    if-ltz v3, :cond_2

    .line 311
    invoke-direct {p0, v0, v3, v6}, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_1

    .line 317
    .end local v0           #comp:Landroid/content/ComponentName;
    :cond_5
    if-eqz p2, :cond_0

    iget v5, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    if-ne v5, v6, :cond_0

    .line 318
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
    .line 459
    :try_start_0
    iget-object v1, p0, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->mPm:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    return-void

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
