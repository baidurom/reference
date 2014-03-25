.class final Lcom/android/server/pm/PackageManagerService$AppDirObserver;
.super Landroid/os/FileObserver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppDirObserver"
.end annotation


# instance fields
.field private final mIsRom:Z

.field private final mIsVendor:Z

.field private final mRootDir:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZZ)V
    .locals 0
    .parameter
    .parameter "path"
    .parameter "mask"
    .parameter "isrom"
    .parameter "isvendor"

    .prologue
    .line 5802
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 5803
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 5804
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    .line 5805
    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsRom:Z

    .line 5806
    iput-boolean p5, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsVendor:Z

    .line 5807
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 24
    .parameter "event"
    .parameter "path"

    .prologue
    .line 5810
    const/16 v23, 0x0

    .line 5811
    .local v23, removedPackage:Ljava/lang/String;
    const/16 v22, -0x1

    .line 5812
    .local v22, removedAppId:I
    const/4 v9, 0x0

    .line 5813
    .local v9, removedUsers:[I
    const/4 v11, 0x0

    .line 5814
    .local v11, addedPackage:Ljava/lang/String;
    const/16 v16, -0x1

    .line 5815
    .local v16, addedAppId:I
    const/4 v15, 0x0

    .line 5818
    .local v15, addedUsers:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v10

    .line 5819
    const/16 v18, 0x0

    .line 5820
    .local v18, fullPathStr:Ljava/lang/String;
    const/4 v3, 0x0

    .line 5821
    .local v3, fullPath:Ljava/io/File;
    if-eqz p2, :cond_0

    .line 5822
    :try_start_0
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5823
    .end local v3           #fullPath:Ljava/io/File;
    .local v17, fullPath:Ljava/io/File;
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result-object v18

    move-object/from16 v3, v17

    .line 5826
    .end local v17           #fullPath:Ljava/io/File;
    .restart local v3       #fullPath:Ljava/io/File;
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$1700()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5827
    const-string v2, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5829
    :cond_1
    #calls: Lcom/android/server/pm/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageManagerService;->access$1800(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 5830
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$1700()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5831
    const-string v2, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring change of non-package file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5832
    :cond_2
    monitor-exit v10

    .line 5915
    :cond_3
    :goto_0
    return-void

    .line 5837
    :cond_4
    #calls: Lcom/android/server/pm/PackageManagerService;->ignoreCodePath(Ljava/lang/String;)Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/PackageManagerService;->access$1900(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5838
    monitor-exit v10

    goto :goto_0

    .line 5900
    :catchall_0
    move-exception v2

    :goto_1
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 5840
    :cond_5
    const/16 v19, 0x0

    .line 5841
    .local v19, p:Landroid/content/pm/PackageParser$Package;
    const/16 v21, 0x0

    .line 5843
    .local v21, ps:Lcom/android/server/pm/PackageSetting;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5844
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    move-object/from16 v19, v0

    .line 5845
    if-eqz v19, :cond_6

    .line 5846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v21, v0

    .line 5847
    if-eqz v21, :cond_b

    .line 5848
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v5}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v9

    .line 5853
    :cond_6
    :goto_2
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v15

    .line 5854
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5855
    move/from16 v0, p1

    and-int/lit16 v2, v0, 0x248

    if-eqz v2, :cond_7

    .line 5856
    if-eqz v21, :cond_7

    .line 5857
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v4}, Lcom/android/server/pm/PackageManagerService;->removePackageLI(Lcom/android/server/pm/PackageSetting;Z)V

    .line 5858
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 5859
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move/from16 v22, v0

    .line 5863
    :cond_7
    move/from16 v0, p1

    and-int/lit16 v2, v0, 0x88

    if-eqz v2, :cond_9

    .line 5864
    if-nez v19, :cond_9

    .line 5865
    const/16 v20, 0x6

    .line 5867
    .local v20, parseFlag:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsRom:Z

    if-eqz v2, :cond_c

    .line 5868
    or-int/lit8 v20, v20, 0x41

    .line 5874
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    or-int/lit8 v4, v20, 0x2

    or-int/lit8 v4, v4, 0x4

    const/16 v5, 0x61

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #calls: Lcom/android/server/pm/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJLandroid/os/UserHandle;)Landroid/content/pm/PackageParser$Package;
    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService;->access$2000(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;IIJLandroid/os/UserHandle;)Landroid/content/pm/PackageParser$Package;

    move-result-object v19

    .line 5879
    if-eqz v19, :cond_9

    .line 5886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5887
    :try_start_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v19

    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, v19

    #calls: Lcom/android/server/pm/PackageManagerService;->updatePermissionsLPw(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)V
    invoke-static {v5, v7, v0, v2}, Lcom/android/server/pm/PackageManagerService;->access$2100(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)V

    .line 5889
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 5890
    :try_start_7
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 5891
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v16

    .line 5897
    .end local v20           #parseFlag:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 5898
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 5899
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 5900
    :try_start_9
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 5902
    if-eqz v23, :cond_a

    .line 5903
    new-instance v6, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v6, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 5904
    .local v6, extras:Landroid/os/Bundle;
    const-string v2, "android.intent.extra.UID"

    move/from16 v0, v22

    invoke-virtual {v6, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5905
    const-string v2, "android.intent.extra.DATA_REMOVED"

    const/4 v4, 0x0

    invoke-virtual {v6, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5906
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, v23

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 5909
    .end local v6           #extras:Landroid/os/Bundle;
    :cond_a
    if-eqz v11, :cond_3

    .line 5910
    new-instance v6, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v6, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 5911
    .restart local v6       #extras:Landroid/os/Bundle;
    const-string v2, "android.intent.extra.UID"

    move/from16 v0, v16

    invoke-virtual {v6, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5912
    const-string v10, "android.intent.action.PACKAGE_ADDED"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v12, v6

    invoke-static/range {v10 .. v15}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    goto/16 :goto_0

    .line 5850
    .end local v6           #extras:Landroid/os/Bundle;
    :cond_b
    :try_start_a
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v9

    goto/16 :goto_2

    .line 5854
    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v2

    .line 5870
    .restart local v20       #parseFlag:I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsVendor:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v2, :cond_8

    .line 5871
    move/from16 v0, v20

    or-int/lit16 v0, v0, 0x180

    move/from16 v20, v0

    goto/16 :goto_3

    .line 5887
    :cond_d
    const/4 v2, 0x0

    goto :goto_4

    .line 5889
    :catchall_2
    move-exception v2

    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 5899
    .end local v20           #parseFlag:I
    :catchall_3
    move-exception v2

    :try_start_e
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 5900
    .end local v3           #fullPath:Ljava/io/File;
    .end local v19           #p:Landroid/content/pm/PackageParser$Package;
    .end local v21           #ps:Lcom/android/server/pm/PackageSetting;
    .restart local v17       #fullPath:Ljava/io/File;
    :catchall_4
    move-exception v2

    move-object/from16 v3, v17

    .end local v17           #fullPath:Ljava/io/File;
    .restart local v3       #fullPath:Ljava/io/File;
    goto/16 :goto_1
.end method
