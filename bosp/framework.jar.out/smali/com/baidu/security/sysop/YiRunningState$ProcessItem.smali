.class public Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
.super Lcom/baidu/security/sysop/YiRunningState$BaseItem;
.source "YiRunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/security/sysop/YiRunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessItem"
.end annotation


# instance fields
.field mActiveSince:J

.field public mClient:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

.field public final mDependentProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field public mInteresting:Z

.field mIsStarted:Z

.field mIsSystem:Z

.field public mLastNumDependentProcesses:I

.field public mMergedItem:Lcom/baidu/security/sysop/YiRunningState$MergedItem;

.field public mPid:I

.field public final mProcessName:Ljava/lang/String;

.field public mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field public mRunningSeq:I

.field public final mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/baidu/security/sysop/YiRunningState$ServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field public final mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "uid"
    .parameter "processName"

    .prologue
    .line 295
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/security/sysop/YiRunningState$BaseItem;-><init>(Z)V

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    .line 272
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    .line 298
    iput p2, p0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mUid:I

    .line 299
    iput-object p3, p0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    .line 300
    return-void
.end method


# virtual methods
.method addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$BaseItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/YiRunningState$ProcessItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p1, dest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$BaseItem;>;"
    .local p2, destProc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$ProcessItem;>;"
    iget-object v3, p0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 469
    .local v0, NP:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 470
    iget-object v3, p0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    .line 471
    .local v2, proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    invoke-virtual {v2, p1, p2}, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 472
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    iget v3, v2, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mPid:I

    if-lez v3, :cond_0

    .line 474
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 477
    .end local v2           #proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    :cond_1
    return-void
.end method

.method buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z
    .locals 6
    .parameter "context"
    .parameter "pm"
    .parameter "curSeq"

    .prologue
    .line 445
    iget-object v4, p0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 446
    .local v0, NP:I
    const/4 v1, 0x0

    .line 447
    .local v1, changed:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 448
    iget-object v4, p0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    .line 449
    .local v3, proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    iget-object v4, v3, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mClient:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    if-eq v4, p0, :cond_0

    .line 450
    const/4 v1, 0x1

    .line 451
    iput-object p0, v3, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mClient:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    .line 453
    :cond_0
    iput p3, v3, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mCurSeq:I

    .line 454
    invoke-virtual {v3, p2}, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 455
    invoke-virtual {v3, p1, p2, p3}, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v4

    or-int/2addr v1, v4

    .line 447
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 458
    .end local v3           #proc:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;
    :cond_1
    iget v4, p0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mLastNumDependentProcesses:I

    iget-object v5, p0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 459
    const/4 v1, 0x1

    .line 460
    iget-object v4, p0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    iput v4, p0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mLastNumDependentProcesses:I

    .line 463
    :cond_2
    return v1
.end method

.method public ensureLabel(Landroid/content/pm/PackageManager;)V
    .locals 10
    .parameter "pm"

    .prologue
    .line 303
    iget-object v8, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mLabel:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 372
    :goto_0
    return-void

    .line 308
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 309
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v9, p0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mUid:I

    if-ne v8, v9, :cond_1

    .line 310
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 311
    iget-object v8, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 312
    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 315
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v8

    .line 320
    :cond_1
    iget v8, p0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mUid:I

    invoke-virtual {p1, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 323
    .local v7, pkgs:[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 325
    const/4 v8, 0x0

    :try_start_1
    aget-object v8, v7, v8

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 326
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 327
    iget-object v8, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 328
    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 330
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v8

    .line 336
    :cond_2
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, v1, v2

    .line 338
    .local v4, name:Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {p1, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 339
    .local v6, pi:Landroid/content/pm/PackageInfo;
    iget v8, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v8, :cond_3

    .line 340
    iget v8, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v4, v8, v9}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 342
    .local v5, nm:Ljava/lang/CharSequence;
    if-eqz v5, :cond_3

    .line 343
    iput-object v5, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 344
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 345
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v8, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 349
    .end local v5           #nm:Ljava/lang/CharSequence;
    .end local v6           #pi:Landroid/content/pm/PackageInfo;
    :catch_2
    move-exception v8

    .line 336
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 355
    .end local v4           #name:Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 356
    iget-object v8, p0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;

    iget-object v8, v8, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v8, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    .line 358
    iget-object v8, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 359
    iget-object v8, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 365
    :cond_5
    const/4 v8, 0x0

    :try_start_3
    aget-object v8, v7, v8

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 366
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 367
    iget-object v8, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 368
    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 370
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_3
    move-exception v8

    goto/16 :goto_0
.end method

.method updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z
    .locals 10
    .parameter "context"
    .parameter "service"

    .prologue
    const/4 v9, 0x0

    .line 376
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 378
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 379
    .local v2, changed:Z
    iget-object v5, p0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    iget-object v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;

    .line 380
    .local v4, si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    if-nez v4, :cond_0

    .line 381
    const/4 v2, 0x1

    .line 382
    new-instance v4, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;

    .end local v4           #si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    invoke-direct {v4}, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;-><init>()V

    .line 383
    .restart local v4       #si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    iput-object p2, v4, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 385
    :try_start_0
    iget-object v5, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    iget-object v5, v4, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {v3, v5, v6}, Lcom/baidu/security/sysop/YiRunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 390
    iget-object v5, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    iput-object v5, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 391
    iget-object v5, v4, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v5, v4, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    .line 392
    iget-object v5, p0, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    iget-object v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    :cond_0
    iget v5, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mCurSeq:I

    iput v5, v4, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mCurSeq:I

    .line 395
    iput-object p2, v4, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 396
    iget-wide v5, p2, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    iget-wide v0, p2, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    .line 397
    .local v0, activeSince:J
    :goto_2
    iget-wide v5, v4, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mActiveSince:J

    cmp-long v5, v5, v0

    if-eqz v5, :cond_1

    .line 398
    iput-wide v0, v4, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mActiveSince:J

    .line 399
    const/4 v2, 0x1

    .line 401
    :cond_1
    iget-object v5, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget v5, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v5, :cond_5

    .line 402
    iget-boolean v5, v4, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mShownAsStarted:Z

    if-eqz v5, :cond_2

    .line 403
    iput-boolean v9, v4, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mShownAsStarted:Z

    .line 404
    const/4 v2, 0x1

    .line 425
    :cond_2
    :goto_3
    return v2

    .line 390
    .end local v0           #activeSince:J
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 396
    :cond_4
    const-wide/16 v0, -0x1

    goto :goto_2

    .line 417
    .restart local v0       #activeSince:J
    :cond_5
    iget-boolean v5, v4, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mShownAsStarted:Z

    if-nez v5, :cond_2

    .line 418
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mShownAsStarted:Z

    .line 419
    const/4 v2, 0x1

    goto :goto_3

    .line 386
    .end local v0           #activeSince:J
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method updateSize(Landroid/content/Context;JI)Z
    .locals 4
    .parameter "context"
    .parameter "pss"
    .parameter "curSeq"

    .prologue
    const/4 v3, 0x0

    .line 429
    const-wide/16 v1, 0x400

    mul-long/2addr v1, p2

    iput-wide v1, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mSize:J

    .line 430
    iget v1, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mCurSeq:I

    if-ne v1, p4, :cond_0

    .line 431
    iget-wide v1, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mSize:J

    invoke-static {p1, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, sizeStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 434
    iput-object v0, p0, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    .line 441
    .end local v0           #sizeStr:Ljava/lang/String;
    :cond_0
    return v3
.end method
